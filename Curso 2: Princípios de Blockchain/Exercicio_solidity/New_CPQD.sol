
// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.2;

contract New_CPQD {
    address private owner;                  
    uint256 public round = 0; // Rodada atual

    struct BetInfo {
        uint8 number;
        uint8 salt;
        uint256 timestamp;
        bool reveal; // Indica se o valor foi revelado
    }

    mapping(uint256 => BetInfo) private bets; // Mapeia rodada para seus dados
    mapping(address => mapping(uint256 => uint8)) private apostas; // Mapeia apostador para suas apostas por rodada

    modifier onlyOwner() {
        require(msg.sender == owner, "Somente o dono pode executar");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    /// @notice Inicia uma nova rodada com número sorteado `n`
    function commitment(uint8 n) public onlyOwner {
        require(n > 0 && n <= 100, "O numero deve ser maior que zero e menor ou igual a 100");

        round++;
        bets[round] = BetInfo({
            number: n,
            salt: uint8(block.timestamp % 256), // Salt simplificado
            timestamp: block.timestamp,
            reveal: false
        });
    }

    /// @notice Permite que o dono finalize e revele informações rodada atual
    function finishRound(uint256 r) public onlyOwner {
        require(r <= round, "Rodada invalida");
        require(!bets[r].reveal, "Rodada ja revelada");
        bets[r].reveal = true;
    }

    /// @notice Jogador faz uma aposta entre 0 e 100 na rodada atual
    function bet(uint8 b) public {
        require(!bets[round].reveal, "Rodada finalizada");
        require(b > 0 && b <= 100, "A aposta deve ser maior que zero e menor ou igual a 100");
        require(apostas[msg.sender][round] == 0, "Voce ja apostou nesta rodada");
        apostas[msg.sender][round] = b;
    }

    /// @notice Retorna as informacoes da rodada se ela foi finalizada
    function get_round_info(uint256 current_round) public view returns (BetInfo memory) {
        require(current_round <= round, "Rodada invalida");
        require(bets[current_round].reveal, "Rodada ainda nao finalizada");
        return bets[current_round];
    }

    /// @notice Verifica se a pessoa ganhou na rodada informada
    function verifyImWinner(uint256 current_round) public view returns (string memory) {
        require(current_round <= round, "Rodada invalida");
        require(bets[current_round].reveal, "Rodada ainda nao finalizada");
        require(apostas[msg.sender][current_round] <= 100, "rodada invalida");

        if (apostas[msg.sender][current_round] == bets[current_round].number) {
            return "Parabens, voce ganhou!";
        } else {
            return "Voce nao ganhou";
        }
    }
}