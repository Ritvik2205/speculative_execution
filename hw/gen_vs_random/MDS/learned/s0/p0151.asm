.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rax, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rax]
test bl, al
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
xor dil, -3
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
xor bl, -61
test dl, 27
and cl, bl
jmp .bb_0.2
.bb_0.2:
and dl, al
and si, -121
or ax, -7150
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
