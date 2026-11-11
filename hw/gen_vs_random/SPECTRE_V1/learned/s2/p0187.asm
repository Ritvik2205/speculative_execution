.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx]
lea cx, qword ptr [rsi + rdi + 66]
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
cmovs dx, ax
adc rax, 34
cmovnl rdx, rdi
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
sbb cl, dl
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rsi]
cmovb si, bx
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
xor cl, 114
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
imul esi, ecx
xor al, -41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
