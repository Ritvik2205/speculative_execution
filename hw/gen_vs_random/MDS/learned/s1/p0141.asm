.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, 8
or dl, cl
xor dl, dil
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
and di, 91
and ax, 19224
jmp .bb_0.1
.bb_0.1:
xor dl, bl
xor bl, -102
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
or dil, -78
jmp .bb_0.2
.bb_0.2:
xor al, 99
xor dl, -59
or ax, -6817
xor ax, -6793
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
