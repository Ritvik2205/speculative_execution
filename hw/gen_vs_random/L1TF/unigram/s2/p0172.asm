.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 84
and rdi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rdi]
add dl, cl
sub cl, bl
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
sbb rax, rax
cmovle rbx, rbx
dec al
and bx, di
or ecx, edx
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
sub cl, -49
xor cl, cl
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
xor rdi, -80
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
