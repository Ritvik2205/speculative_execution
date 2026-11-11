.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rdx, rbx
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
test sil, sil
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], sil
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rbx], ax
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
movzx eax, cl
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
adc ax, -27488
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rbx], dx
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rcx
add bl, -98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
