.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe ebx, eax
and al, al
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
imul ecx
and rcx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rcx]
cmp sil, al
add bl, 54
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx], -68
or cx, dx
sbb ax, 18812
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
add rcx, 32
and rcx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], dl
or rcx, 74
cmovz ebx, ecx
bt rax, rcx
sbb dx, 2
and rsi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ecx
or sil, al
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
cmovnp rax, rcx
and rsi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
sbb al, 57
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 86
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 3
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 76
add dl, -8
xor cx, ax
and rdx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdx]
xor edi, edi
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], eax
and rsi, 0b1111111111111 # instrumentation
xor cl, dl
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax], 96
or bl, al
cmp bl, cl
and rax, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rcx]
cmovb ax, bx
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
