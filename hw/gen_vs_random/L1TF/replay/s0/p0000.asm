.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 50
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
inc rbx
and rdi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
seto sil
cmovl rbx, rbx
adc dl, -12
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
add al, -80
and sil, 37
cmovnb di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
