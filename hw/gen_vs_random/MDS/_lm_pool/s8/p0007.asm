.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edi, 248
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rax], edx
and sil, -9
and rax, 498847670
test edx, -372470678
xor rax, -1128378406
test dil, al
test al, cl
and cl, -6
bts ebx, 205
jmp .bb_0.1
.bb_0.1:
test al, cl
and edi, 23
not al
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
or bl, dl
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
