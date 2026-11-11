.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs dx, bx
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
test si, 100
and al, dil
jmp .bb_0.1
.bb_0.1:
xor dil, -124
test al, 127
test al, 66
and cx, -2
and dil, dl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 91
test bl, al
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
xor cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
