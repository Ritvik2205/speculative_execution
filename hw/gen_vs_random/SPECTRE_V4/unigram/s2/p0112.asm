.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, bl
xor dl, al
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 91
cmp cl, al
cmovle rdi, rax
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 64
test al, dil
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
not ax
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
btr ax, si
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], si
or cx, 77
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
bt eax, ebx
cmovns ebx, edx
add dl, 100 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
add cl, -21 # instrumentation
adc rsi, 69
test cx, 96
adc sil, dil
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
cmovb ebx, edx
and rdx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdx]
btc rbx, 73
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 22
movzx ebx, sil
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], edi
add bl, -72
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 70
test ebx, -595096626
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rsi
cmovs edi, ebx
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 80
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
adc al, dil
mov ecx, eax
xor dx, ax
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdi]
cmovz rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
