.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, ax 
test bl, -91 
cmp rax, 40 
and rdi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdi] 
mul rdx 
imul ecx 
cmp eax, 64 
and rdi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdi] 
cmp al, 98 
movzx si, bl 
and edi, -102 
movsx ax, dl 
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 83 
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl 
sub rdi, -52 
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx] 
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx] 
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -19860 
cmp rbx, rdi 
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 38 
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx] 
sub cl, dl 
imul cx, cx 
cmp al, dl 
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl 
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx] 
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], -41 
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rax 
add dl, al 
not rcx 
btr dx, 209 
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx] 
cmovs bx, di 
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi] 
btr di, cx 
not dx 
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl 
add rax, -1121139858 
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rcx] 
add al, -10 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax] 
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax] 
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax] 
sbb bl, 121 
cmovnb bx, bx 
and ax, bx 
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx] 
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi] 
bt ecx, eax 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
