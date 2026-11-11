.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, sil
cmovnbe ax, ax
and rax, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], bx
cmovp ax, bx
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edi
movsx rdx, cl
adc bl, sil
btc rdx, rsi
jmp .bb_0.1
.bb_0.1:
cmovnbe si, bx
add dil, bl
cmovs rax, rdx
btc di, 237
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
cwd
and rdx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
