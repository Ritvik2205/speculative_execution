.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul dx
adc eax, eax
cmovs di, bx
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
add bl, -15 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], cl
add cl, -89 # instrumentation
sbb ecx, edi
sub cl, bl
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 99
and rdx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
adc ebx, 15
sbb al, bl
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], si
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], di
neg rcx
lea rcx, qword ptr [rax + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
