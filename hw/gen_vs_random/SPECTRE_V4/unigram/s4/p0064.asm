.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, -943474997
cmovnle ecx, eax
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
btr di, 245
mul cl
btr rdx, rdx
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 33
adc dil, -17
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
sub rdx, rdx
and al, al
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
sub dl, al
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -50
xor al, dil
movsx ax, bl
mov cl, 1
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rcx]
mul cx
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
xor si, bx
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], sil
add di, 73
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rsi
imul eax, edi, 82
adc dil, bl
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx]
add ecx, 99
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
bts cx, 135
add rax, -874478885
cmp cl, -80
and rax, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -86
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], ebx
mul dx
or bl, bl
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], ax
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
