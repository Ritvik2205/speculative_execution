.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
add cl, dl
dec cl
not rax
cmovno edx, esi
dec dl
and al, -1
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
add dl, -12 # instrumentation
cmovp esi, eax
cmovnp bx, di
or dl, 1 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
add bl, al
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], eax
btc dx, si
sbb dl, dl
sub bl, dil
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rsi
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
add cl, 111 # instrumentation
cmovnle dx, ax
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rcx
sbb rbx, rcx
sub ax, 25338
adc rax, 1682231791
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ecx
xor ax, di
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], -32
mul rbx
sbb rax, 475459025
and dl, bl
mov rax, -4627568876460436527
and rsi, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rsi]
cmovle dx, bx
cmp cl, 107
xor di, dx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdi]
cmovl bx, si
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
sub cl, 92
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 6
and rsi, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
