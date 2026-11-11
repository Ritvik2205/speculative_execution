.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], -107
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax]
add bl, -74 # instrumentation
cmovnp rbx, rdx
or al, -83
adc edx, -125
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
xor rdi, rbx
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
mov si, -8007
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
mov dl, al
or rax, 1042095162
sub bl, -89
and cl, cl
cmovbe rdi, rcx
and bl, dil
and al, dl
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
sub cl, -32
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
sub eax, -638345541
cmp bl, al
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
or dil, sil
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
or ecx, 102
xor dl, bl
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdi]
add sil, -18
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
cmovnle rax, rdi
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 90
cmovnbe rsi, rdx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ecx
xor ax, bx
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
not rbx
add dl, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
