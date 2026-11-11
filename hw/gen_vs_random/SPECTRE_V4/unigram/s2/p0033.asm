.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rbx
cmovs rax, rcx
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], esi
neg cx
cmovnle rax, rsi
test cl, 78
add dil, al
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
xchg cx, ax
movzx eax, cl
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
and rbx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
cmp sil, sil
adc bl, bl
cmp al, -1
btc eax, 62
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], 98
and rbx, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
add bl, -97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rsi
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
imul di, cx, 47
bt edi, eax
or si, cx
test sil, 1
add al, -10 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], bx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rsi
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edx
cmp eax, -1538116527
or esi, 32
or al, bl
add al, -94 # instrumentation
cmovnle rdi, rax
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rsi
movzx ebx, si
and rdx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdx]
add al, -79 # instrumentation
adc rbx, 11
sub rsi, -104
cmovl bx, dx
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rcx
movzx rax, bx
add al, -109 # instrumentation
cmovns si, bx
movzx rsi, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
