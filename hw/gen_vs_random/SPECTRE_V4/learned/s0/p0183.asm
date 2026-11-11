.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, bl
cmovb edi, ebx
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
inc al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
cmovs dx, di
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
mov al, dl
sub al, 119
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
sbb bl, -94
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
sub al, dl
cmovo rbx, rdx
xor bx, si
cmovs rax, rdx
cmovo dx, di
btr ecx, edx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rdi, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
mov rsi, rax
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
or rsi, 19
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
cmovnz edi, edx
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
neg ebx
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
mov rdx, rcx
add ecx, ebx
movzx rdx, ax
or dil, 79
not dl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], si
cmp ax, 23131
mov cl, cl
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
sub dl, dl
cmp cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
