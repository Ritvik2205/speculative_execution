.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 95 # instrumentation
mov dil, 16
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
and dl, al
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 1958762209
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], dx
imul ebx
add al, -63 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], si
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
sub al, bl
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
cmovb ax, cx
sub bl, al
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi], -73
bts esi, ebx
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rsi], esi
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], bx
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdx]
sub si, -92
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 19
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edx
cmp sil, -100
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
adc cl, -86
add dl, 109
and rbx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rbx]
cmovnz esi, ebx
bt edi, 78
add al, -64 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rdx]
movzx rdi, bx
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 69
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 119
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rdx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -86
sub al, al
btc ecx, 233
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
sbb dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
