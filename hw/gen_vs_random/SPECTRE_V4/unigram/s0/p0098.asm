.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, ax
cmovnz eax, edi
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 75
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 98
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 85
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dil
sbb al, sil
add bl, -49
and rax, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rax], 12
add al, 32 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
cmovl cx, di
mov eax, esi
bt di, 67
and rdi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], dx
bswap ecx
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], al
cmp rdx, rdi
cmovnb ecx, ebx
or ax, 57
btc edx, ebx
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], -25929
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 19
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
and rdi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdi]
imul al
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
mov eax, ebx
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
and sil, -84
mov rdx, -3088288992777791879
xor dx, 7
test dl, dil
add al, 42 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
not rbx
and rdi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdi]
add cl, -75 # instrumentation
sbb eax, -676736552
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
sub sil, dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 40
test ebx, 95
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
cmp ebx, -27
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 65
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
