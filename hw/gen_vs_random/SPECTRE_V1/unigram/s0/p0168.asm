.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rsi + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdi]
bts rdi, 95
adc al, cl
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
cmp dil, dl
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], dil
lea rdi, qword ptr [rdi + rsi + 96]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
mov al, al
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], si
adc dl, 48
cmp eax, ebx
or dl, 1 # instrumentation
add sil, -47 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
