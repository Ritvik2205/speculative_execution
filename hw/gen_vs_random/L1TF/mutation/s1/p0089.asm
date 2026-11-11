.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -54 # instrumentation
setz al
neg bl
cmovnle rax, rcx
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
cmovle rcx, rcx
lea edi, qword ptr [rbx + rsi]
lea esi, qword ptr [rbx + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
and cx, -79
cmovnl rbx, rsi
and rax, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
