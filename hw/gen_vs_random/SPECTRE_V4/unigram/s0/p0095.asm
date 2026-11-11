.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
cmp al, dil
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 7
add bl, 56 # instrumentation
cmovle rcx, rbx
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 3
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], dx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
add dl, 118 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
movsx eax, bl
cmovp ecx, eax
and rsi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rsi]
cmp sil, 88
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
bts ecx, 68
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rsi, 97
sbb ax, bx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
cmovs dx, dx
sbb bl, sil
add cl, -42 # instrumentation
adc dl, al
add rcx, 93
or sil, sil
add dl, 31 # instrumentation
cmovnl cx, cx
sbb edx, 58
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], bx
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
cmovnb eax, ebx
add al, 123 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
cmp bl, bl
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rcx], si
sub eax, 2030845821
imul bl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
cmovns cx, di
adc ax, 27
movzx esi, sil
test ebx, 1263899340
cmovnl bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
