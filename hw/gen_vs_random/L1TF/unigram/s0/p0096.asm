.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
add dil, -125 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdi]
or dl, bl
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rsi
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rdi
cmovb edi, edi
setnb sil
lea eax, qword ptr [rax + rdi + 79]
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
adc rcx, rax
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx], 25
sbb esi, ecx
inc edx
test sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
