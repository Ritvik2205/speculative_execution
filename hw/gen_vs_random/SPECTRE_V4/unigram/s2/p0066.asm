.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, dil
xor bl, 93
movzx cx, dil
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], dx
and dl, sil
neg al
not si
movzx rdx, si
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
cmovnb dx, dx
cmovnb ax, ax
not ax
xor al, bl
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
and rdx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rax, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dil
test eax, -558243208
test bl, bl
cmp al, dl
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edi
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
cmp bx, 99
imul si, dx, 55
adc ebx, 117
cmovns si, si
mov al, al
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and dl, cl
and dl, al
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdx]
dec bl
xor dl, 96
add cl, 8 # instrumentation
adc bl, dl
btc rdx, 99
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
or sil, cl
sub rdi, 27
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
