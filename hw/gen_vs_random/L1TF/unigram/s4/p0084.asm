.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, cl
and rbx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
add al, 93
add bl, -92 # instrumentation
setnz cl
test dl, dl
xor esi, 36
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
lea rdx, qword ptr [rbx]
xchg cx, bx
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
xor ebx, -81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
