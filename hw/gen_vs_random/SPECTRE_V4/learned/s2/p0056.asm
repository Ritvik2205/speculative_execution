.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 66
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
mul ax
test dl, cl
lea rdx, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
cmp dil, -124
or al, sil
cmovb esi, ebx
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 44
btc ebx, edx
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
mov rbx, 9101099553822202722
sbb rax, 183833426
cmp al, 70
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rax], edi
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
adc bx, -89
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rcx]
mul edx
and dl, al
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rbx], esi
movzx ecx, al
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
bt esi, ecx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 82
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], dx
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
adc rax, 1542637830
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 77
mov dil, -118
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], si
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
and dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
