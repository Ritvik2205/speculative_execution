.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -49 # instrumentation
cmovno cx, bx
cmovnb dx, cx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 72
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
cmovb rbx, rdi
and al, -37
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 90
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rcx], dx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
test bl, 106
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rsi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
