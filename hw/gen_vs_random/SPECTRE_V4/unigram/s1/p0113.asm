.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], -15
sbb cl, sil
imul ebx, ebx, 12
cmp dl, -82
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], sil
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2089960014
sub cl, -73
imul dl
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], dx
dec rax
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], bx
or ax, dx
sbb dil, bl
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ecx
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], esi
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdi], ax
adc cl, 31
xor bl, 27
test cl, -119
cmp bl, -16
or dl, 71
btr di, 245
sbb dl, sil
sbb eax, -920840872
mov al, dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rbx
imul bl
test rcx, 46
xor bl, -126
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
cmovle ax, bx
sbb eax, edx
add dl, -91 # instrumentation
cmovl rsi, rsi
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
or al, al
sub cl, al
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rbx], si
test bx, bx
sub al, dil
sub bx, dx
add al, bl
imul di
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
add bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
