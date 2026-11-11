.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
cmovnb bx, bx
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 38
mul rdx
and edi, -102
and rdi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
sub cl, dl
bt ecx, eax
xor cx, ax
btr di, cx
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rax
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and ax, bx
not rcx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -3291
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
add rax, -1121139858
cmovs bx, di
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
cmp rax, 2052654950
movsx ax, dl
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], -41
and rdi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdi]
sub rdi, -52
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
btr dx, 245
test bl, -16
cmp eax, 89
add dl, al
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
movzx si, bl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rcx]
not dx
add al, -10 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
cmp rbx, rdi
imul cx, cx
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
cmp al, dl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 83
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
sbb bl, 121
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
imul ecx
cmp al, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
