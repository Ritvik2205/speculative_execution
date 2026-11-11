.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edi, 93
and rax, 96
movzx eax, al
sub bl, cl
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rax
sbb dl, -99
cmovnb ecx, ebx
bt edx, edi
mov rbx, 9101099553822202722
movsx rsi, ax
test dil, cl
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
cmp al, 70
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 60
mov sil, sil
imul dl
and rsi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rsi]
cmp rsi, 12
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rbx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rbx
add cl, -117 # instrumentation
cmovs rdi, rdx
movzx rbx, dil
add dl, -99 # instrumentation
not eax
add cl, -42 # instrumentation
adc bl, dl
not rbx
adc al, sil
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 97
movzx ecx, bl
mov cl, dl
add dl, 48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], sil
and ax, 35
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 20
mov edx, ebx
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdi
xor al, al
and rdi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdi]
cmovz rdx, rbx
cmovnp edi, eax
neg dx
not ax
or ax, bx
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
neg al
sbb dil, 7
not rcx
or cx, ax
sub bl, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
