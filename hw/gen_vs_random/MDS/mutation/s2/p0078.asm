.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 18 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
btr dx, di
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
xor dil, 124
or dl, -8
cmovnp dx, bx
and rdx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 3
and dl, -5 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
test ax, -31596
btr bx, 100
xor ebx, edx
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
and cl, 11 # instrumentation
cmovp ebx, edx
and rdi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdi]
cmovnb ecx, edx
and rdi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test dl, 9
bt rsi, 27
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
or al, bl
xor al, -19
test ax, 6779
or sil, -78
btc ax, dx
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], cx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
