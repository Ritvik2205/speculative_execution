.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul dx, ax
add dl, 109 # instrumentation
sbb dil, 93
sbb ebx, 39
cmovno cx, cx
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
setle bl
jmp .bb_0.1
.bb_0.1:
xchg rax, rax
imul ecx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
or al, dl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
movzx ebx, cx
bt ecx, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
