.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ecx
and rdx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
sbb al, sil
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
cmp cx, 19
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rax
adc al, cl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
lea ecx, qword ptr [rdi + rdi + 6]
cmovl eax, esi
lea rbx, qword ptr [rax + rdi + 19]
xor cl, bl
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
add dl, -89 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 27
and rdi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdi]
xor edi, 115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
