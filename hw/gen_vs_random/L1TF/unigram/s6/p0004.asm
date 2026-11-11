.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
btr esi, edi
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], 60
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 76
add bl, 68
and rdi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 81
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], dx
and rsi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rsi]
lea rax, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 63
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], sil
setnl dil
test sil, 29
add cl, -72 # instrumentation
cmovp edx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
