.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
inc rbx
add al, 56
and rdi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 50
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
adc dl, -12
cmovnb di, ax
and rcx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rcx]
lea rax, qword ptr [rax]
cmovl rbx, rbx
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
and sil, 93
seto sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
