.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx si, bl
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
bt ecx, eax
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
not rcx
test bl, -116
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 83
not dx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], -41
cmovnb bx, bx
add rax, -874478885
and ax, bx
imul ecx
sub rdi, 105
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
imul cx, cx
cmp rbx, rdi
add al, -10 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
btr di, cx
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
btr dx, 209
add dl, al
and edi, -102
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
cmp al, dl
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
sub cl, dl
sbb bl, 121
cmovs bx, di
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
mul rdx
cmp eax, 89
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -3291
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
movsx ax, dl
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 38
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rax
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
cmp rax, -1547540200
xor cx, ax
cmp al, 75
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
