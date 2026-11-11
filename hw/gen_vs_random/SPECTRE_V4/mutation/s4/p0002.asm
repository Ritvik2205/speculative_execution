.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
movzx si, bl
cmp al, -44
sub rdi, -34
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rcx]
cmp eax, -2073187604
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
cmp al, dl
and ax, bx
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdi]
sbb bl, -75
and edi, -102
sub cl, dl
imul cx, cx
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
cmovs bx, di
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], -41
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -3291
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
bt ecx, eax
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
imul ecx
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -122
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 83
xor cx, ax
mul rdx
cmovnb bx, bx
add rax, 1049076260
cmp rbx, rdi
add al, -10 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdi]
btr di, cx
not dx
movsx ax, dl
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
add dl, al
btr dx, 209
cmp rax, -47
test bl, 87
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
not rcx
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
