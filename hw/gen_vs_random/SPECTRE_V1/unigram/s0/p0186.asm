.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sets al
movsx cx, dil
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 76
and rsi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rbx]
lea rdi, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
xor dx, 99
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
mov bl, dl
add al, 51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 25
and rbx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rax]
cmovnl edi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
