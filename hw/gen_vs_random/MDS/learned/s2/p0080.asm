.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, bl
test rdi, 10
or bl, 127
or bl, dl
and dl, sil
or al, dil
jmp .bb_0.1
.bb_0.1:
and rcx, 107
xor ax, -1005
and ax, 13090
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
xor rax, -1657511731
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
xor al, -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
