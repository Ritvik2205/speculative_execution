.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -104 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
sub rax, -2089384489
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -58
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 48
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
