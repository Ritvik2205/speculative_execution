.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], edi
dec sil
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
add cl, -59 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdi]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 81
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -59
cmp ecx, 30
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rax
bswap edx
cmovp esi, edi
cmovz rcx, rdx
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rdx
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rdx
sub rcx, rdi
neg dil
mov dil, al
imul cx, cx
and rax, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rax]
add bl, sil
and rdx, 0b1111111111111 # instrumentation
test si, 4
cmp dil, 53
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 60
and rcx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rcx]
or edx, -118
bt bx, 61
or bx, cx
movsx ax, dil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
test di, 2
add eax, edi
or bx, ax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
sbb cl, 127
and rdx, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], cl
add eax, ecx
add cl, -118 # instrumentation
sbb rax, 69
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 54
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], cx
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 66
sub rcx, -99
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], -15
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edi
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
movzx ax, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
