.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 84
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi], 29
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], ecx
lea bx, qword ptr [rdi]
add di, 82
and rsi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 23
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 3
xor sil, 13
and sil, bl
neg rcx
lea rsi, qword ptr [rdi + rdx + 57]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
