.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
or bl, dl
jmp .bb_0.1
.bb_0.1:
or al, dil
test esi, 425331143
xor dl, sil
and al, al
btc edx, 7
btr ax, 193
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edx
or cl, dl
xor cl, -13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
