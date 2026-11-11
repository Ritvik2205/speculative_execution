.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
and rax, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rax]
xor al, 34
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
jmp .bb_0.1
.bb_0.1:
and al, dl
jmp .bb_0.2
.bb_0.2:
test sil, dl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
