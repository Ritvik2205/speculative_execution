.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
and rsi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
xor al, al
and rbx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and cl, 40
jmp .bb_0.1
.bb_0.1:
bt ax, dx
and dl, -73 # instrumentation
cmovns rbx, rcx
or ecx, esi
or ax, -4635
and rax, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rax]
or dil, -52
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 119
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
or ax, 28091
cmp cx, 85
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], edx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 59
test al, 74
lea esi, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], si
xor dl, al
bt rcx, rbx
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
cmovz rsi, rax
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 79
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
add rax, rsi
mov rsi, 2
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 77
add sil, 55
sub dl, sil
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rcx]
cmp dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
