.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
movsx rdx, dil
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
sub edx, eax
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
cmovle esi, edi
cmovnz eax, ebx
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rax], cx
test edi, -1249897727
cmp al, cl
test al, sil
cmovnbe rdi, rsi
imul cx, bx
sub dl, 43
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dil
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rax, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rax]
not di
add bl, 110 # instrumentation
movsx ax, bl
and rbx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rbx]
movzx ebx, dl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 95
cmovnl rdi, rdx
test ebx, -595096626
btc rdi, rax
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
add sil, sil
add cl, -82 # instrumentation
sbb ax, bx
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
xor dl, bl
cmovz ecx, edi
cmovnle edx, esi
mov bl, bl
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
movzx eax, bl
sub edi, 66
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
sbb al, al
add cl, -37 # instrumentation
adc edx, 67
sub si, 53
cmp si, dx
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
