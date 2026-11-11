.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp al, dl
lea di, qword ptr [rbx + rdi]
xor dl, 71
btr rdi, 28
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 47
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx]
btc di, bx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdi]
sbb sil, -78
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], esi
lea cx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rdi
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
