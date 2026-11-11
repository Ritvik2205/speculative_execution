.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, al
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 80
and rdi, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
cmovb eax, ebx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], di
and rdx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
add dl, -98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], bx
adc cl, -19
and rsi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rsi]
xor dil, al
sbb al, bl
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
