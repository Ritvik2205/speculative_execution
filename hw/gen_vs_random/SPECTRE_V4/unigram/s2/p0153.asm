.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 75
movzx dx, cl
neg sil
movzx ebx, cl
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], si
and rax, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rax]
mov rax, rsi
mul esi
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
neg dil
mul esi
add cl, -42 # instrumentation
adc al, cl
xor cl, -85
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
cmp dl, cl
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rax]
bts ax, 69
test al, 80
xor cx, ax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
add bx, 110
test edx, 573099753
sub rdx, 22
add cl, 106 # instrumentation
cmovnp rcx, rbx
add rsi, rdx
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rsi, 25
movzx ecx, dil
xor bl, dl
add cl, 106 # instrumentation
cmovnp rdx, rax
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
not di
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 75
add cl, 106 # instrumentation
cmovnp rax, rdx
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 8
sbb bl, -94
test bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
test ecx, 50
not si
imul eax
adc bl, al
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
