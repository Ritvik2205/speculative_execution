.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ecx
lea rax, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
lea bx, qword ptr [rax]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rdi
inc edx
jmp .bb_0.1
.bb_0.1:
lea rcx, qword ptr [rdx + rsi]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
xor al, 89
btr ecx, edx
mov dx, di
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], sil
sub bl, sil
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
