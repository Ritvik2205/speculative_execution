.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
lea cx, qword ptr [rdi + rdx + 43]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
setnb dil
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
cmp cl, sil
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 56
sbb dil, -93
cmp ecx, 41
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
mov rdi, 59
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
