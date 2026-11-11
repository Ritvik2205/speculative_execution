.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 112
and cl, 118 # instrumentation
cmovp ecx, edi
or dl, sil
cmovo edi, esi
or edi, edi
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
btc edx, edi
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
or ax, ax
or al, dl
test cl, -18
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
cmovle rsi, rax
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
cmovno cx, cx
test eax, 298249463
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
bt esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
