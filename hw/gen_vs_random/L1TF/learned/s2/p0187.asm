.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rax]
and esi, eax
or rdi, 71
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
mul dil
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
cmovb si, si
and al, dl
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
sbb cl, -123
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], di
bts eax, esi
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
