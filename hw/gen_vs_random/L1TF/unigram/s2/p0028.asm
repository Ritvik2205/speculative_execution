.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx + rdx + 3]
lea dx, qword ptr [rax]
add dl, 70 # instrumentation
sbb dl, 43
and rax, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], al
mov al, cl
lea ebx, qword ptr [rbx + rdi]
jmp .bb_0.1
.bb_0.1:
inc ebx
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 68
and rsi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
sub dx, ax
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
adc bx, 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
