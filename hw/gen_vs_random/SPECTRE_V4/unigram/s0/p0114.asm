.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, 17
xor cl, -85
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
not cx
or ax, dx
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
add sil, 26
xor sil, dil
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
movzx dx, sil
test rcx, -2118888343
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
cmp rcx, 70
and rdi, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
cmp al, bl
cmp cl, cl
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 40
cmovnbe ebx, ecx
test al, 66
bt edx, edi
sbb bl, bl
test rbx, 17
and dil, dl
or ebx, 19
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and di, 23
sub al, 50
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rsi]
btc rdi, rsi
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 83
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
cmovnp esi, esi
cmovs dx, ax
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
cmovo eax, edx
sub dl, dl
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 4
xor esi, 93
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], 88
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
add sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
