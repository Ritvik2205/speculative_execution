.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc ebx
not eax
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
lea bx, qword ptr [rax]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmovle ax, ax
imul eax, ecx, 91
add cl, 42 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -1157135998
sbb cx, si
xor dl, sil
cmovp cx, cx
movzx ecx, ax
and rbx, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
