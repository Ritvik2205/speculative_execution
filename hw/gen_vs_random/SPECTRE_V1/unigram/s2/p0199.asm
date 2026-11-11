.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 40 # instrumentation
btc rcx, rcx
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rax]
add al, -8 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], 30
adc cl, -81
mov cl, -72
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rcx
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 2
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 20
add bl, 113 # instrumentation
setnb bl
cmovnl ecx, ebx
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 23
mov sil, cl
or cl, -98
and rsi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rsi]
add cl, 69 # instrumentation
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
