.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
sub bx, cx
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], dl
add dil, 7 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rbx]
cmovnle eax, edx
cmp rdx, -49
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rsi
xor rcx, 112
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 4
inc cl
and cl, dil
movsx rbx, cx
xor bl, 27
and rdi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rdi]
and cl, -118
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -47
or dl, sil
test sil, cl
cmovo ebx, esi
and rdx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
mov rcx, 24
xor dl, -123
and rdx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 87
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
mov cl, 14
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
inc ebx
cmovnb rdx, rax
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
add dl, -8
and sil, cl
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and rdi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdi]
not si
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
or rdx, 1
test ebx, edi
test si, 95
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 49
xor bl, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
