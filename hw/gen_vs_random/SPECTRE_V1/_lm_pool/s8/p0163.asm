.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 48
cmp eax, 692647572
sub dil, dl
adc ax, 24404
sub cl, al
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 25
or rax, -3
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, esi
xor al, -19
add cl, dil
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 55
test al, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
