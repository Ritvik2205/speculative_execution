.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 75
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and esi, 30
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
cmovle rax, rdx
and rsi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
