.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, dx
imul ax
bt edx, eax
and rbx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 118
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
add dl, -8 # instrumentation
lea edx, qword ptr [rcx]
lea rbx, qword ptr [rbx + rdx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], cx
and rcx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rcx]
sbb di, bx
adc edx, edx
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
cmovo esi, edx
and rdi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
