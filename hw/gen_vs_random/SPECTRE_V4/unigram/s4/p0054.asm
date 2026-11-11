.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], dx
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
and edx, 71
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], dx
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
sub bl, bl
cmovb di, dx
or sil, -47
and rax, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax], 47
and rax, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rax]
imul ecx, ecx, -3
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdx
cmovz bx, dx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], bx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 78
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
or bx, 0b1000000000000000 # instrumentation
bsr bx, bx
neg al
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdi
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
bt ax, 145
adc rbx, 60
or dil, bl
mov al, dil
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rdi
sbb al, dil
or esi, edx
and rsi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rsi]
mov cl, cl
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 598547570
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
imul ax
sbb bl, -79
and rax, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rax]
or dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
