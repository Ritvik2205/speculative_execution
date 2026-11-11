.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rax]
lea rbx, qword ptr [rcx + rax]
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], sil
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], sil
adc ax, -614
dec al
sbb al, cl
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdi
xor ax, 913
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
