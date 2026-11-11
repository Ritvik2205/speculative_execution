.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], esi
lea rdx, qword ptr [rax + rdi]
movsx edx, ax
add dl, sil
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], dil
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], 72
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 61
test dl, -105
lea ax, qword ptr [rsi + rax + 64]
and rax, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rax]
cmovb eax, edx
add sil, -56 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], esi
sub al, cl
and rcx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
