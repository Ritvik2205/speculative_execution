.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], cl
cmovnbe rcx, rax
and dx, 1
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], bl
xor ecx, 62
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
adc bx, -89
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
cmovle esi, eax
and rcx, -102
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
xor cl, al
cmovz eax, eax
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], si
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
dec bl
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
add dx, -90
sub edx, eax
imul cl
or cl, cl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
dec rdx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
add bl, -109 # instrumentation
sbb ebx, 75
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], 58
and rdx, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rdx]
sbb edi, 87
not bl
xchg rdi, rbx
xchg rbx, rax
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
or cl, al
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rsi
xor al, dil
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edx
cmp dl, dil
xchg dx, cx
sub ecx, ebx
and cl, bl
add bl, 63 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
