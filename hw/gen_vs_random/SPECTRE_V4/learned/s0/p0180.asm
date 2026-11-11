.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 60
xor cl, 13
and al, 5
test dl, -81
and eax, -2001076187
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
adc al, cl
sub dil, 35
xor dl, -123
movzx ax, dil
test eax, -251558852
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 25
or bl, cl
or sil, -47
and bl, -30
adc dl, al
and rax, 86
or rax, -2144083737
and rdx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdx]
test al, 18
xchg ebx, eax
mov sil, cl
test dil, cl
cmp bl, dil
test al, -85
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 6
and al, 49
or eax, -1213318393
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
