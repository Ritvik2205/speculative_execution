.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp ecx, 74
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rdi
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 77
add al, bl
cmovb di, dx
and rcx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi], -9
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 62
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 1 # instrumentation
and dx, word ptr [r14 + rdi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rdi]
cmovl cx, bx
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rsi
cmovle ax, ax
and rbx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 76
adc cx, 21
cmp ecx, 79
or rdx, rdi
btr si, 108
and rdx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rdx]
adc bl, al
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], ecx
bt bx, 13
mov cl, dl
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
bt esi, ecx
add cl, -59 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
or rdx, rsi
test rsi, rax
add edi, 83
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
sbb edx, edi
test sil, 16
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
cmovo eax, ecx
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 94
and rsi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
inc ecx
sub dl, dl
and al, dl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rdi]
sbb eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
