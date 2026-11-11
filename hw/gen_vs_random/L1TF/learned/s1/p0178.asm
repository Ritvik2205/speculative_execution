.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
lea di, qword ptr [rdi + rcx]
or bl, cl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
test dl, 84
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 63
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and dl, 73
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
