.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -17
xor al, -19
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 35
and bl, dl
or al, 30
test rax, -708244380
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 5
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
or cl, 7
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and dil, sil
or cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
