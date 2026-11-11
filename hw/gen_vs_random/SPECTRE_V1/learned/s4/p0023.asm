.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -54
sbb dil, cl
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rbx]
test bl, -8
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 17
jmp .bb_0.1
.bb_0.1:
add bl, 70
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
lea ax, qword ptr [rbx + rdx]
sbb al, cl
or cl, dl
lea rdx, qword ptr [rcx + rbx + 50]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
