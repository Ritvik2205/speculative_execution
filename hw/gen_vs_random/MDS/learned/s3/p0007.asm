.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, 93
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
or dl, sil
or dl, 51
jmp .bb_0.2
.bb_0.2:
or dil, -41
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and di, 91
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
and sil, dil
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rbx]
xor dl, dil
or dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
