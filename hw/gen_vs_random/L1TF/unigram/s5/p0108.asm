.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
or dx, 0b1000000000000000 # instrumentation
bsf ax, dx
lea ax, qword ptr [rbx + rsi + 3]
cmovl rcx, rdi
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rbx], si
imul al
test dl, -37
xor dil, al
sub dl, -34
xor rdx, rsi
and rdx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdx]
add dl, 121 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
