.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, ax
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], -41
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
and ax, bx
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
sbb bl, -79
cmp al, dl
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rdi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdi]
add al, -10 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
not rcx
movzx si, bl
cmp eax, 512128713
imul cx, cx
bt ecx, eax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rcx]
cmovnb bx, bx
cmovs bx, di
test bl, 78
cmp al, -116
and edi, -102
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
cmp rax, 2096656187
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
mul rdx
add rax, -874478885
btr di, cx
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rax
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
imul ecx
add dl, al
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -3291
sub rdi, -52
cmp rbx, rdi
btr dx, 209
not dx
movsx ax, dl
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -122
sub cl, dl
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 83
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
