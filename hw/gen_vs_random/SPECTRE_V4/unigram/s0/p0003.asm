.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dl, 99
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 598547570
and rsi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 94
adc bl, 0
neg rcx
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rbx], dx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
sbb dil, 21
cmovle rdi, rdx
cmp al, dl
and rax, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rax]
neg rdi
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 88
dec dl
sub rdx, 65
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
btr di, dx
mov cx, -22668
and dil, -120
cmp rcx, -121
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 59
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
add al, -63 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
cmovnz di, dx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 25738
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
and sil, -84
bt ecx, 135
adc dl, cl
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi], -73
bts cx, bx
xor ax, cx
cmovle rdi, rsi
movsx edx, al
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
imul dx
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rdx
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
