.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
and rdx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdx]
or sil, -47
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
sub dl, 107
xor rsi, -102
and ax, -12738
xor al, dl
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
sbb edx, 62
and bl, cl
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 95
or al, al
adc al, al
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rcx
cmp rdx, -49
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
adc bx, 52
and rsi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 26
xor rdx, 106
test dl, -102
and rcx, -20
and rsi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rsi]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
or al, al
xor ecx, 54
add bl, 76 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
xor eax, 365940537
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 22
add di, 22
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], al
xor bx, cx
bt ebx, 16
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx]
or ax, 0b1000000000000000 # instrumentation
bsr di, ax
bt cx, bx
and rsi, 0b1111111111111 # instrumentation
xor dl, sil
sub rdi, -52
neg cl
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], di
sbb al, -52
test rcx, 67
adc rdi, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
