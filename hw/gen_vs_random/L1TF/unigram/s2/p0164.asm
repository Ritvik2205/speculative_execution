.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, 32
btc si, 8
add bl, 76 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
cmp cx, 78
xchg eax, edx
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 32
or dil, bl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], edi
cmovnbe ax, ax
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 54
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rcx]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
lea rcx, qword ptr [rdx + rbx + 13]
lea cx, qword ptr [rcx + rdx + 57]
xchg dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
