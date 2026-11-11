.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, si
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
and di, 99
and bl, dl
and sil, bl
test al, sil
test cl, 73
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
xor al, cl
and dl, -73
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
