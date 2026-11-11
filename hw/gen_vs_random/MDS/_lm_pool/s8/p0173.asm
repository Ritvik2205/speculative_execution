.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, ax
test bl, 65
jmp .bb_0.1
.bb_0.1:
test sil, al
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
or sil, bl
not sil
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdi
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
or al, -61
xor rax, -1657511731
test ecx, -1843375753
and bx, 51
test dil, cl
or dl, -31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
