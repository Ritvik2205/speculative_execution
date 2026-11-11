.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
or cl, 7
or dl, -97
xor di, -83
xor sil, cl
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rsi]
or sil, dl
and al, 75
xor dl, cl
jmp .bb_0.2
.bb_0.2:
test dil, 46
and al, -55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
