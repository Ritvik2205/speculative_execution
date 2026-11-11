.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
xor ecx, 24
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 39
xor rbx, rax
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], -7
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
inc di
cmp al, sil
xchg rsi, rsi
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
add al, 66 # instrumentation
cmovp ebx, ebx
not edx
and rdx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rdi]
and al, cl
xor eax, -48271836
and rcx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rax]
adc al, al
cmp cl, al
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
cmovnb si, cx
movsx rdx, dil
xor rdi, -72
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rbx
mov bl, 29
or cl, dil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 32
and rsi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rsi]
movsx ax, dil
and rcx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 9
cmovbe ax, di
adc si, -74
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], esi
cmovno edi, edx
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
or eax, esi
cmovnl rdi, rcx
xor al, 55
cmovo bx, ax
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -123
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
