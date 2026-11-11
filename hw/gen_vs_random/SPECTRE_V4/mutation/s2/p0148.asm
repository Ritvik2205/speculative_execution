.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, dl
cmovbe bx, di
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdi]
test cl, bl
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rsi
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
or ax, -26182
test edx, -38580719
xor rdx, rcx
or dl, dl
sbb eax, 316213929
btc rax, rbx
sub edx, eax
and rcx, -20
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
cmp rax, -1070057082
and rdi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdi]
movzx edx, sil
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 120
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
bt rdi, rbx
sbb al, -4
and rdi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdi]
inc cl
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
adc al, dl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edx
and rdx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
or di, 122
imul esi, esi, 60
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
cmp al, 109
or cl, 83
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 2
xor rsi, -3
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add bl, 7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
sub cl, cl
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 7
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
add cl, -77 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rsi
or cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
