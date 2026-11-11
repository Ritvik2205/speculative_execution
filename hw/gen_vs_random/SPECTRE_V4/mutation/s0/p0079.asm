.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rax]
sbb dl, -106
neg rdx
bt edi, ebx
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
cmovnbe rax, rdx
and rsi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
sub al, 0
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 6
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
btc ecx, 201
cmp al, al
xchg rcx, rbx
and dl, cl
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ebx
sbb rdi, rbx
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
movzx rsi, sil
bt ax, 248
add al, 89 # instrumentation
cmovnle si, di
mov dl, al
cmovl rsi, rdi
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 98
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
btc ebx, edi
and rdi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 100
test eax, -651442446
and rdx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 56
test ax, 19171
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
movzx di, dil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -91
mov al, bl
bts rbx, rcx
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
bt cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
