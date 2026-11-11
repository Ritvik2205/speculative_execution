.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rax]
test dl, -36
and rdi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
setp bl
sub dx, -23
and rsi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rsi]
xor rcx, rbx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
lea rbx, qword ptr [rbx]
add al, -39 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
cmovno ebx, esi
lea cx, qword ptr [rbx + rax + 99]
setp dl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 78
movzx edx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
