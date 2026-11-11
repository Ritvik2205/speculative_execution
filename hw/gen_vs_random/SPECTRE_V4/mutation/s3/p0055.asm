.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
cmovno rbx, rax
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 43
xor si, dx
cmovnz di, ax
test al, bl
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
or rdx, rax
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 90
xor sil, dil
cmovz ebx, ebx
cmovnz rcx, rax
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdx]
add dl, -25 # instrumentation
cmovs rbx, rcx
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
cmovnbe si, di
adc bl, al
mov rax, -4627568876460436527
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
dec cx
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], -86
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
bt eax, esi
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rbx
bt rsi, 153
and rax, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rax]
cmovnle rdx, rcx
and rsi, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rsi]
sbb esi, eax
dec cl
cmovo si, bx
or dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rdx]
bts edi, edx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], bl
or dl, dl
and rdx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdx]
cmovnbe ebx, esi
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and ecx, edi
cmp cl, cl
movsx rax, si
test cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
