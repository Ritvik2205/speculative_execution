.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg al, al
cmp ebx, -27
and rbx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], -99
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi]
movzx edx, dx
sub cl, al
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
mov al, dil
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], -59
test eax, ecx
and rbx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rbx]
cmovno ebx, edx
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi]
adc dx, 99
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 68
cmovnle esi, ebx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], cl
movsx edx, cx
movzx cx, cl
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rcx
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
adc al, -59
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
sbb rax, 59
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rax
cmovb ecx, eax
mov sil, bl
cmovs eax, ebx
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
sub cl, bl
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
and dl, 24
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 11
and dl, dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
adc bl, -20
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
xor rdx, rcx
cmovp cx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
