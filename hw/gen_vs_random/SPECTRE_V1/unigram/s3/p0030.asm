.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rax]
sbb rsi, 62
lea rax, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
movsx di, dil
and rbx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rbx]
xor rdx, 48
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rax
mov di, si
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
