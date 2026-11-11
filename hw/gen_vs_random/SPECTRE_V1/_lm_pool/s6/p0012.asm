.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ecx, bx
imul al
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
lea eax, qword ptr [rcx]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
test cl, -120
sbb al, dl
jb .bb_0.2
jmp .exit_0
.bb_0.2:
lea bx, qword ptr [rdx + rcx]
and sil, 11
sbb al, 66
sub dil, -111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
