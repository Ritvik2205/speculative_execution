.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, bx
sbb bl, -79
cmp al, 105
btr dx, 245
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
xor cx, ax
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
add al, -10 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 38
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
btr di, cx
not dx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -19860
bt ecx, eax
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdi]
not rcx
cmp al, dl
imul cx, cx
imul ecx
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
mul rdx
sub rdi, 105
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
movzx si, bl
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], -41
cmovs bx, di
add dl, al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
and edi, -102
cmp rbx, rdi
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rax
cmp eax, 64
cmovnb bx, bx
cmp rax, -1547540200
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
sub cl, dl
movsx ax, dl
and rdi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
add rax, 114
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 83
test bl, 78
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
