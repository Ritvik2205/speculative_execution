.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rbx + rdx + 31]
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdx]
imul ax, si, 2
jmp .bb_0.1
.bb_0.1:
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, eax
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], 86
sbb bl, sil
add bl, 89 # instrumentation
sbb dl, bl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
btc bx, ax
cmovnbe rdx, rax
and rax, rsi
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], edi
add dl, -125 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
