.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 87
test dil, -80
or al, bl
or dl, dil
test eax, 343548072
xor cl, -13
or cl, bl
test sil, bl
xor bl, -102
and rbx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rbx]
xor bl, -102
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
