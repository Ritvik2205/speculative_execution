.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe ebx, edi
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
test dl, 11
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 33
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
xchg dil, cl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rcx]
lea ax, qword ptr [rdi + rax]
sbb bl, cl
and rdx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 68
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 47
and rsi, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
