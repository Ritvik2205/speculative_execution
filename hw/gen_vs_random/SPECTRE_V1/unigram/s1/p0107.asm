.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, al
cmovl ebx, ebx
setnz al
adc cl, -19
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rcx
and dl, bl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
dec cx
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], -45
add dl, -34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
imul cl
lea si, qword ptr [rax + rax + 17]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
