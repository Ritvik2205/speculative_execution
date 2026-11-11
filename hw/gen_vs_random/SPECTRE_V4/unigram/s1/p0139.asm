.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, -80
and rbx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rbx]
btc ebx, eax
or ax, 0b1000000000000000 # instrumentation
bsr dx, ax
mov eax, eax
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
movzx rdx, cx
bswap ebx
and rax, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rax]
adc dil, dil
cmovnz ebx, eax
neg rax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 50
cmovb ebx, eax
cmp dl, 45
or si, 85
test sil, 16
add dl, -94 # instrumentation
cmovnle rcx, rdx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
cmovnbe ecx, esi
or al, al
sbb bl, 121
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 76
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 12
xor al, dl
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], sil
add al, -79 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdi]
sbb ax, 1843
adc eax, 917540672
add dil, 75
cmp rdx, -49
xchg dil, al
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], bl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
or al, cl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], -17
mov di, cx
cmovs cx, di
cmovb rax, rcx
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edx
sbb al, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
