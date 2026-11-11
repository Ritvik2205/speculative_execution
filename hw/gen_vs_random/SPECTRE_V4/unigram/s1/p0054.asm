.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, al
cmp dl, 100
sub bx, 87
add bl, 38 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rax]
and di, 77
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
and edx, 75
test rbx, 28
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 44
add bl, bl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 46
or dl, al
bts eax, eax
inc esi
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
cmovnle ax, cx
sbb al, al
or eax, -1434249782
and esi, 55
add eax, ecx
test cl, cl
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
add edi, 11
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
cmovb edx, eax
test bx, ax
xor dx, 40
test bl, dl
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], si
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
and cl, 58
and rcx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rcx]
cmovnb ebx, edx
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
add sil, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
mov al, 64
cmovb ebx, ebx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], di
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
adc si, 17
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
cmp dil, -124
cmovnle cx, di
and rsi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rsi]
mul dl
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
