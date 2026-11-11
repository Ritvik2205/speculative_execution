.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
cmp ebx, -33
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
jmp .bb_0.1
.bb_0.1:
xchg rax, rdx
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
add bx, -65
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dil
lea eax, qword ptr [rdx + rax + 11]
and rax, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rax]
sbb al, 66
sbb cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
