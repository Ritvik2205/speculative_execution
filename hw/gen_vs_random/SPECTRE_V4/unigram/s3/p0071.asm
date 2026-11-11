.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edi, ebx
and bl, -63
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and bx, 95
and rcx, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rcx]
cmovs rbx, rcx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, esi
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], sil
cmovs dx, ax
or dl, 56
cmovs di, ax
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
inc ebx
add bx, 110
xor dx, 2
cmovnb di, di
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
not dx
cmovnle rbx, rbx
cmp al, dil
and dl, al
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ebx
xor ecx, esi
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add al, -10 # instrumentation
mov ax, 71
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rsi]
or al, 109
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 29
cmovnle ax, bx
movsx edx, bx
movzx di, dil
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rbx
xor edx, ebx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 40
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rsi], 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
