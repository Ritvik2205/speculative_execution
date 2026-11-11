.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], cx
sub dx, 34
and rbx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
xor dil, bl
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], si
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
test ecx, 10
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
cmp bx, dx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 37
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx], 13
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], eax
add cl, 119 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rcx]
add cx, 89
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
add sil, 97 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 24
add cx, 3
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
add al, cl
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 33
and rcx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rcx]
adc cl, dl
and rdi, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdi]
mov bl, 48
sub cl, -74
xchg bl, bl
test al, sil
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 36
add bl, 38 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdx]
mov rbx, rdx
mov dl, dl
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdi
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rbx
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], 81
add al, -117 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rcx]
btc si, 6
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and si, 68
mul ax
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
sub ebx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
