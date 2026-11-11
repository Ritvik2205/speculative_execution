.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
cmovle bx, bx
and rbx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rax]
btc edx, 17
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
adc sil, 45
btc ax, 26
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle esi, eax
test esi, 41
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
bts ecx, 82
movzx rsi, cl
xor al, -2
btr di, ax
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
sub dil, -10
and rax, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rax]
xor bl, sil
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
add rax, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rbx]
add ax, ax
imul cl
btc dx, 16
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
movzx edx, dx
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
xor dil, sil
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb di, dx
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
xchg cx, dx
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
sub si, bx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
sub eax, 2030845821
add dl, dl
movzx ebx, cl
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], bx
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
and rax, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rax]
add rsi, rcx
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
cmovo dx, si
cmovs ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
