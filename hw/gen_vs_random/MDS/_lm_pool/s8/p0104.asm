.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 22
test al, dl
and dl, -73
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and ax, -12519
xor rax, -1128378406
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
or al, -61
xor sil, -14
or sil, -78
xor bl, al
btc ax, 63
or rdi, 21
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rax
test al, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
