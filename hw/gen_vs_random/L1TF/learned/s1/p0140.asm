.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
not al
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
sub dl, 105
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and di, 78
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 3
lea rdx, qword ptr [rdi + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
