.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -9
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], sil
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
not dil
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
btc rdi, rsi
sbb bx, 94
cmovnp ax, dx
sbb rsi, 117
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rsi], cx
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
or si, 0b1000000000000000 # instrumentation
bsf dx, si
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], edx
and dl, -11
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 34
dec si
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -87
and dl, dl
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
test al, -85
btr eax, 100
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], ebx
add bl, -38
or rsi, rdi
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
mul dl
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rcx
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
imul di
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
adc sil, dil
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 47
btc rbx, rdi
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
xchg rsi, rdx
adc di, -78
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
cmovnz rdx, rdx
sbb ax, si
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
imul esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
