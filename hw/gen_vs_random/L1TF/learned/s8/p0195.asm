.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, 73
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax], 29
lea rdx, qword ptr [rsi + rcx]
and dl, al
and dl, dl
jmp .bb_0.1
.bb_0.1:
btc ecx, esi
jmp .bb_0.2
.bb_0.2:
test rcx, 15
cmp di, -78
and bl, 89
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
