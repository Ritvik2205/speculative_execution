.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul ax, cx
bt edx, edi
or dl, sil
cmovle rdi, rdx
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
cmovnle esi, edi
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 51
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edi
sbb ebx, 6
sbb dl, -99
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edi
mul ax
cmovnb edi, eax
and edx, 71
and rdx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdx]
xor dil, 97
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdx
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rbx
adc al, dil
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
add bl, 38 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dil
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 86
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
cmovb edi, ecx
or eax, esi
adc cl, sil
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
test ax, cx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, ecx
movsx ebx, cl
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 35
cmovnbe edx, eax
cmp al, bl
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rsi
cmovnz edx, eax
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
movzx ax, sil
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 82
and rbx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
