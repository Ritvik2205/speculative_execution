.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx cx, bl
add ax, -15653
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
cmp ax, -906
test ax, -5170
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
setnl dl
dec dl
movzx bx, sil
and rsi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rsi]
cmp dl, dil
or dx, 0b1000000000000000 # instrumentation
bsr di, dx
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rbx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rbx]
sbb cl, 19
cmovnb esi, eax
or si, 28
btr bx, cx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], edx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
xor bl, dl
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
sbb cl, -104
cmp cl, 19
add sil, 110
sub dl, al
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edi
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
imul dx
add bl, -102 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
cmp al, 114
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
sbb cl, bl
and rax, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
add rcx, rsi
cmp dl, dil
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], si
and al, bl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
add dl, 110 # instrumentation
movsx si, dl
test sil, 98
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
not bx
and esi, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
