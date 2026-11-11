.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
or eax, -1779536330
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
or di, 122
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edx
or al, -88
add cl, al
cmovs cx, bx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
add bl, cl
adc al, dl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
sub bl, dil
cmovno rcx, rsi
add cl, -77 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rsi
or edx, 0
add bl, 69 # instrumentation
cmovnbe di, cx
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
xor rsi, -3
or cl, 66
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
test dl, 114
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
imul esi, esi, 60
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 7
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -74
sub rax, -1066968986
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -103
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rax
or cl, dl
cmp al, -44
add al, -1
adc sil, -2
and rdx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], ax
add bl, 102 # instrumentation
cmovnp edi, eax
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
and rsi, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdi]
inc cl
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
cmp edi, ecx
sub cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
