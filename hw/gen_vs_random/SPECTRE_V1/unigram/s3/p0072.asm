.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov rcx, 66
mov al, al
cmovle rcx, rsi
mov dil, dl
or rdi, 43
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rcx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ecx
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], 29
cmp esi, 84
cmovnb di, si
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rax
and rdi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rcx]
bt si, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
