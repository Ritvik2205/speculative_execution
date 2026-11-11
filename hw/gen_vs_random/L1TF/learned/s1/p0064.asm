.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
cmovb ax, di
mul dx
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
lea cx, qword ptr [rcx + rdi + 51091]
xor al, -127
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
sub ebx, 44
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
sub rbx, 74
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rcx]
sbb cl, -123
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
