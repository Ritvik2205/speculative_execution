.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 8
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
xor al, bl
xor al, -19
test dil, sil
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 33
jmp .bb_0.1
.bb_0.1:
cmovnb rdx, rbx
jmp .bb_0.2
.bb_0.2:
and dl, dl
xor dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
