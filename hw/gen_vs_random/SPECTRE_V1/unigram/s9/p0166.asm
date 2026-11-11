.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rsi]
xor rax, rcx
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
sub ebx, 75
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdi, qword ptr [rbx + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rdi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdi], 6
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdx]
test cx, -17886
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
adc edx, 78
and ax, 25351
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
