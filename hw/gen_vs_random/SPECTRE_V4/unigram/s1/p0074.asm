.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rax
xor dl, bl
add al, 40
and rsi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
xor cl, -101
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rcx
or ebx, edx
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rsi
add al, 54 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
add cl, -74 # instrumentation
cmovnp rcx, rsi
cmovnb eax, edi
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rsi]
and eax, -1145483375
sbb al, bl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], bl
add cl, -59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
not cl
xor esi, -112
sub bx, 24
adc dil, 124
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -12
xor cl, al
imul ebx, edi, -24
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], ax
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rcx
cmovnl edx, ecx
cmp bl, -79
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], cx
and rbx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rbx]
movsx cx, dl
imul dx, si, 55
cmp bx, 113
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
cmovnz rcx, rdx
cmovbe si, di
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
