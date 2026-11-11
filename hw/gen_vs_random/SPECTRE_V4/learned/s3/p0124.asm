.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 74
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rcx
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
or sil, sil
sbb rax, 183833426
bts esi, edi
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
xor bl, sil
sub dil, dil
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 31
or si, 0b1000000000000000 # instrumentation
bsr dx, si
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 27
and rcx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], ax
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
cmovz esi, edi
cmovbe dx, cx
or dl, dil
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
and bl, dl
mul cl
sub esi, 96
btc rbx, rax
and rbx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rax]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edi
lea bx, qword ptr [rcx + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
mul cl
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
cmp bl, al
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
movzx cx, dl
and rbx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rbx]
or dl, 56
adc bl, al
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdx
xor edx, eax
cmovnz edi, ebx
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rsi
and al, dl
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 67
sub dl, dil
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rcx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
