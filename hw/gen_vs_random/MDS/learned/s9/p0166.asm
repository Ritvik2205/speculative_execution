.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -27
or al, dl
and sil, al
test rax, -708244380
xor ax, -5889
jmp .bb_0.1
.bb_0.1:
or sil, dl
xor al, 8
test dil, al
or al, cl
and cl, -111
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
and dil, -62
or cl, 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
