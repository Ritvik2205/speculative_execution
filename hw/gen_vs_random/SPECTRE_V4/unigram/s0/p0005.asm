.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdi, -41
and rbx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -18
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], di
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 47
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -87
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 3
add cl, -33 # instrumentation
not cl
sbb bl, sil
add al, 19
add bl, 7 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edx
and rbx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rbx]
add bl, -38
btc rsi, rax
movsx edx, si
cmovs rdx, rbx
cmovo rdx, rax
and rcx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rcx]
and dx, -107
movzx edi, sil
neg sil
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rbx
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], edi
xor al, cl
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 18
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
cmovnb si, ax
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
add dl, 29 # instrumentation
cmovnl rax, rcx
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
cmovbe rdi, rax
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edi
and rcx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], ax
cmovz rdx, rbx
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 20
mov edx, eax
or rdx, 1
cmovs rsi, rcx
xor cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
