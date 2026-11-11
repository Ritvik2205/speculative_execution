.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], ax
sub al, sil
and bx, -118
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
jns .bb_0.2
jmp .exit_0
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
sbb rcx, 28
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rcx]
and dil, -93
cmovs di, bx
lea si, qword ptr [rax + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
