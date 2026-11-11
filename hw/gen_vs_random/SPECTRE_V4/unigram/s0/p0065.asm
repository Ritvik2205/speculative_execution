.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 5
sub di, 97
and rdi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
sub edx, ebx
sub ecx, 19
sbb al, dl
cmovz ecx, esi
and rbx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
cmovnp di, di
test dl, 19
movzx ax, cl
add ax, ax
or dl, sil
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
test al, al
add al, 118
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ebx
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
movzx ebx, dl
and bl, dl
cmovnb edx, esi
add cl, -32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rcx]
sub bl, 17
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
mov rcx, 5862286138240743445
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], ax
test dil, 39
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
or cl, dl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and bl, cl
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rax]
xchg edx, ebx
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
xor bl, dl
and esi, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
