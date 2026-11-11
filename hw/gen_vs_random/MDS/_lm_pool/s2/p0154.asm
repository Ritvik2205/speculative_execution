.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -95
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and al, -114
xor rsi, -117
test bl, cl
test sil, -96
or ax, -4210
and bl, 68
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
xor al, bl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -83
test cl, 91
and ax, 19740
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
test dil, al
xor cl, 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
