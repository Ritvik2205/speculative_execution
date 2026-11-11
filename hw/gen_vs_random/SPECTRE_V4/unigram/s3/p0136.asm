.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, di
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
xchg sil, al
test bx, cx
movsx rdx, si
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], bx
xor cx, 1
add dl, 12 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
movzx rax, dx
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
sub cl, cl
not edi
imul bl
bt edx, 51
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
test al, 66
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], esi
cmp bl, 13
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
adc al, al
cmovo di, si
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
sub rsi, 26
add al, 118
movsx edi, ax
adc ax, ax
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
sub al, 98
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
cmovnz edi, ebx
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], al
and rdi, -2
not cx
test rax, -344032571
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
add cl, -26 # instrumentation
btr ecx, 66
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], dx
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
add dil, 82
sub eax, edi
and rdi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rsi]
sbb sil, 108
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
