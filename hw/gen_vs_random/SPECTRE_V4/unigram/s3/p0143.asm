.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc eax
cmovnle rsi, rdx
and rsi, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rsi]
or di, 2
cmp dx, -1
btc edi, ebx
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
sub al, cl
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], eax
and di, dx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 48
add cl, 31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], al
xchg al, cl
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
imul eax
cmp ecx, eax
test rdi, rdx
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rax]
imul dl
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], eax
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rcx
imul edi, edx, 29
test eax, ecx
cmp al, -53
cmp dl, bl
mul rdi
cmovnle rbx, rbx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
cmovnp dx, bx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 88
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -21
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], bx
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 80
and bl, bl
sbb bl, al
movzx rax, dx
cmovb rbx, rax
cmovnb ecx, ebx
bt edx, 14
test al, dil
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
