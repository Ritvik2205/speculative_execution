.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb eax, 544669545
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi], 61
adc edx, esi
cmovl si, bx
btr ebx, edi
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
cmovnbe dx, dx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], dx
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rax
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ecx
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
