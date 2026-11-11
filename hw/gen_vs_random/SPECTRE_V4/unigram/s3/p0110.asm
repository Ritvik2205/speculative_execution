.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rax
mov al, cl
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
btr cx, 252
adc al, bl
neg cx
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], edx
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], si
add al, al
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rax], edi
movsx dx, dl
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and cl, cl
imul rax, rbx
sbb sil, -11
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 24
cmovno edx, ecx
or edi, -64
sbb cl, 12
mul rbx
and rbx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdx]
sbb ax, -30070
cmovnle di, ax
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rsi]
movzx ecx, bl
and rdi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdi]
or dl, dl
cmp al, cl
or bl, bl
bts cx, 158
cmp dl, -82
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rbx
and dl, 24
sbb cl, dl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edx
and rax, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rax]
add cl, -122 # instrumentation
cmovp ax, ax
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rax
dec si
xor sil, 49
bswap eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
