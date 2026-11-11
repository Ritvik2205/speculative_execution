.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, sil
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], edi
lea esi, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], -63
xor cl, -40
cmovno eax, edi
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 18
cmovle eax, ecx
mul rcx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
adc dl, 48
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
setp al
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 76
imul al
inc cl
add al, -62 # instrumentation
setnb bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
