.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
cmovs ax, di
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], ax
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
lea ax, qword ptr [rbx + rcx]
lea dx, qword ptr [rax + rbx + 64]
jmp .bb_0.2
.bb_0.2:
sets al
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], dx
and rcx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
