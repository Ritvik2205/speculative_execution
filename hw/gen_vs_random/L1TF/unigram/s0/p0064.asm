.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
or ax, 10
setno bl
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 39
lea cx, qword ptr [rax + rbx + 33]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
xchg ax, cx
cmovb dx, ax
jmp .bb_0.1
.bb_0.1:
cmovs edx, edx
add al, 27 # instrumentation
sbb esi, eax
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], cl
imul cl
and rcx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
