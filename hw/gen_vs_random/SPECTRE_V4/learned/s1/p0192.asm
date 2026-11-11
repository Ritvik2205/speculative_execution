.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, al
test dl, 24
test sil, -119
xchg esi, edi
adc bl, sil
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
mov al, dl
mov dl, bl
or al, dl
dec al
sub bl, 66
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
sbb al, bl
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
and cl, bl
lea ax, qword ptr [rdx]
sub al, 29
test dl, -102
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
sbb dil, 33
and al, bl
cmovno edx, eax
sub cl, al
test al, 57
adc sil, cl
and dl, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
