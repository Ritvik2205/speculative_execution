.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -26 # instrumentation
cmovnp ax, dx
cmovnbe rax, rdi
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ecx
cmp al, cl
lea eax, qword ptr [rsi + rdi + 31594]
test cl, -31
sbb ax, -206
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
sub rax, -679751639
lea si, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
mul dil
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 89
and rax, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
