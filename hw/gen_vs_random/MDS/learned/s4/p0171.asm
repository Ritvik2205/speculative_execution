.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 95 # instrumentation
cmovns rdx, rdx
xchg dl, cl
cmp al, 74
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 38
and rbx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rbx]
btc dx, ax
and sil, -3 # instrumentation
cmovnb si, cx
or dl, -18
jmp .bb_0.1
.bb_0.1:
add cl, 102 # instrumentation
sbb si, ax
or dl, -18
cmovl rbx, rdx
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
or dl, -18
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rax, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdx], di
sbb bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
