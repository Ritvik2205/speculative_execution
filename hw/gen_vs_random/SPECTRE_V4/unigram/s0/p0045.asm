.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 6
add dl, -58 # instrumentation
xchg bx, cx
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], al
movzx ebx, cx
bt ax, si
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
sbb dil, al
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
and dx, word ptr [r14 + rax] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 69
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 6
and al, -12
mov rax, rdi
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rcx
and rax, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rax]
cmp dil, dil
neg rax
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], -25929
test sil, 68
mov edx, -950755477
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax]
add al, 17 # instrumentation
cmovnle esi, ecx
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dl
cmovnz cx, ax
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
sub al, 69
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rax]
add bl, cl
sub di, 9
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdx]
sub al, cl
xchg ebx, ebx
or dil, dil
mov bl, -69
and rdi, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rdi]
add cl, -84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rsi]
or esi, 1 # instrumentation
add al, 49 # instrumentation
adc sil, al
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], ax
cmovl rax, rbx
adc dil, dil
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
