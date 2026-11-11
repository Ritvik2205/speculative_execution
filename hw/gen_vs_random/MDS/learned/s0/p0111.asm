.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
or al, -75
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
jmp .bb_0.1
.bb_0.1:
xor al, bl
xor al, 122
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rax
xor cl, -13
and di, 91
test al, dil
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
xor al, -89
xor bl, -88
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
or cl, 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
