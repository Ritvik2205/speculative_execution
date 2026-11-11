.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdi]
xor cl, cl
dec bx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 55
jmp .bb_0.1
.bb_0.1:
mov dx, ax
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
sbb cx, 41
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
setnle al
and rdi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdi]
sbb ax, ax
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 86
or cl, dl
or rbx, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
