.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -31
or cl, dl
and cx, -8
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 43
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
xor sil, dl
xor dl, -43
or al, al
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
or bl, al
test edx, -372470678
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
