.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not bl
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rsi], eax
and rbx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
adc sil, sil
add cl, 95 # instrumentation
mov dil, bl
and rdx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
lea rcx, qword ptr [rsi + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], edi
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
lea ebx, qword ptr [rsi + rax]
lea ebx, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
