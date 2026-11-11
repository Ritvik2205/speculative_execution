.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
cmp eax, -240917296
add dil, -75
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
cmovno bx, dx
or cl, -98
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rcx]
test dil, -116
or al, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
