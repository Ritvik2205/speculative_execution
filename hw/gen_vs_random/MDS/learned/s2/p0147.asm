.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
or bl, sil
or dx, 125
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
test dl, sil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
test cl, 62
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
bt cx, dx
or bl, -52
xor di, -83
test dl, 27
or al, 25
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
test esi, 1857129931
test sil, -55
jmp .bb_0.1
.bb_0.1:
xor sil, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
