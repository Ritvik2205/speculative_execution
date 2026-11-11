.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp ebx, 18
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rax]
cmovz eax, ebx
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rsi]
add al, al
imul cx, si, 49
setp cl
adc cl, cl
and rax, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rax]
xor dil, 2
add dil, 69
setz sil
sbb cx, 74
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
