.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
xor dil, -42
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
add cl, 88
xor sil, 64
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
xor al, 89
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
lea rdi, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
