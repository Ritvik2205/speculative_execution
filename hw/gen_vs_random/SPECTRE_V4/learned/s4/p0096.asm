.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
sub rdi, 79
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
or eax, -1434249782
add cl, cl
cmovle edx, ebx
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 42
cmovle ebx, edi
test sil, dil
or sil, dl
adc rdi, rdx
cmovnle si, cx
test eax, 1561062795
mul rbx
and bl, -66 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
cmovbe dx, dx
dec dl
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rbx], bx
or rdi, rcx
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], sil
sub dil, -10
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rcx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
cmovnb ax, ax
and dl, dil
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
test bl, 24
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx]
movzx ecx, sil
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 25
xor ax, 25554
cmovle rdi, rsi
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], ax
cmp rax, 1524061352
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
xor dl, dl
test ebx, -595096626
cmovs rdi, rcx
not di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
