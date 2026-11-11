.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 92
xor dl, dl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], cl
cmovs edx, edx
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
mov bx, 7
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 82
and rcx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rcx]
setb dil
jmp .bb_0.1
.bb_0.1:
sub ax, 19828
xchg cl, sil
and esi, ecx
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rsi
and rdx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
