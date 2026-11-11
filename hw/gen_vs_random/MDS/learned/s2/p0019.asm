.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], ax
or esi, eax
test dil, sil
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 13
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
or rax, -689609688
test al, 22
and al, bl
or rdx, -48
and bl, 68
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and dl, cl
xor rax, 459999114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
