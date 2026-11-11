.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rax]
setnb dl
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
sbb dil, -106
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rcx]
and edi, 31
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, dl
lea rdx, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rbx]
imul edi, eax, 35
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 2
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
