.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 83
and rdi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdi]
cmp rax, 2052654950
sbb bl, -75
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
cmp rbx, rdi
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
and edi, -102
not rcx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rcx]
test bl, 78
imul cx, cx
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
cmp al, dl
bt ecx, eax
cmp al, -116
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
mul rdx
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], -41
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and ax, bx
movzx si, bl
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdi]
cmovnb bx, bx
add al, -10 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
imul ecx
btr dx, 245
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
sub cl, dl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
sub rdi, -52
movsx ax, dl
add rax, -874478885
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -19860
cmovs bx, di
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rax
xor cx, ax
not dx
cmp eax, 2
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -122
btr di, cx
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
add dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
