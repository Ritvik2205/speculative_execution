.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rsi]
xor dil, 88
add bl, -72
add al, al
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and ebx, 63
test sil, 77
neg cx
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 39
sbb rdi, 18
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
and dx, 1
cmovb edi, ecx
and rax, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 42
test edi, esi
test bx, di
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
sbb sil, cl
mov ecx, edx
and dl, dil
neg bl
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
movzx bx, al
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rsi], edi
add dl, 48 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], bl
cmp cl, bl
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
bt edx, eax
and bl, -63
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
add cl, -82 # instrumentation
sbb di, cx
neg al
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], edx
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
xor al, 29
cmp al, sil
and rsi, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
mov ebx, 62
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
