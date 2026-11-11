.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ebx, 75
lea ebx, qword ptr [rcx + rax + 73]
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], 56
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 90
and rsi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rsi], 35
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
mov sil, bl
and dil, -114
or ebx, -124
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rdi], di
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
cmp dl, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
