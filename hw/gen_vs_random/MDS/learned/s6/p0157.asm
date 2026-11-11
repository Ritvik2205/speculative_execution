.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 9
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
or ax, -4210
and al, -8
test cl, dil
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
test rax, -648054011
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
xor sil, 27
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
test cl, 101
and sil, -56
test rax, 1207043993
xor cx, -18
test rcx, -613256812
and di, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
