.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
cmovnp bx, ax
or dil, 12
and rdx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdx]
or di, 0b1000000000000000 # instrumentation
bsf bx, di
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], di
and bl, 56 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rbx]
cmovnb dx, ax
jmp .bb_0.1
.bb_0.1:
cmovnp esi, ebx
and bl, al
and rsi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rsi]
xor dil, dl
and sil, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rsi]
cmovp edx, ebx
cmovnz ecx, edi
cmovnbe edx, ebx
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and ax, cx
xor bl, -102
and cx, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
