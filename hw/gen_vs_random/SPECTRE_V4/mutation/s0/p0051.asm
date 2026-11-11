.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 87 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rbx]
or dl, dl
adc di, -78
sbb eax, edi
or eax, 1001462340
add dil, -84
cmp rdx, rbx
movzx rax, di
test sil, 16
neg ecx
or dl, dil
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 6
cmp al, cl
adc ax, dx
cmovb rsi, rax
sbb sil, -11
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rcx
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 33
xchg rsi, rax
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
cmp sil, -100
cmovs ecx, esi
neg ax
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 4
and rax, 0b1111111111111 # instrumentation
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
and edi, edi
btr bx, ax
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
movzx ecx, si
inc eax
mov al, al
xor bl, 27
cmovnp bx, si
and rbx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and al, 92
sub eax, -672265139
adc cl, al
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rcx
or dil, al
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
btc ecx, edi
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx], -50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
