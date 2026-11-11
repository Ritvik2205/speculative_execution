.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rbx + rcx + 5]
and rdx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdx]
add bl, 106 # instrumentation
cmovs ecx, ebx
xchg ax, di
dec rdi
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 2
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
lea ax, qword ptr [rcx + rax]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 34
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 66
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
setnz al
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 98
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
