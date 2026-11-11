.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
sbb al, dil
and rdi, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 88
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], 32
lea edi, qword ptr [rdi]
add cl, 121 # instrumentation
cmovs esi, esi
adc ebx, eax
btc rax, 47
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 58
and rdx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
