.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 67
mul ax
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
mul ax
sbb rax, 183833426
movsx rsi, al
and rdx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
movzx ax, sil
sbb cl, dl
cmovb si, cx
xor bx, si
dec bl
inc sil
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], si
adc bl, cl
add dl, 12 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rbx]
or bl, al
and rdi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdi]
cmovs ecx, esi
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
add sil, sil
bt ebx, edx
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
imul ax, cx, 75
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
mul dil
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 47
btc ebx, 94
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rcx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
xor sil, al
and rdi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
test sil, al
sbb al, sil
or bl, sil
cmp sil, 88
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], si
cmp al, 70
xor esi, eax
cmovb edx, edx
cmp cl, cl
xchg dl, cl
xor dl, dl
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], cx
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
