.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
cmovo ax, si
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edx
add ax, 28666
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
test al, al
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
movzx rdx, ax
cmovnl rdx, rdi
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
add rax, 60
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 56
sbb dl, -99
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
cmovs rax, rdx
sub sil, dl
and rdi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rbx]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rbx
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
sbb dl, -99
or ax, 0b1000000000000000 # instrumentation
bsr dx, ax
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], dx
sbb bl, al
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdi]
cmp dil, dl
xor ax, bx
test ax, -5170
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 85
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 83
xor bl, 93
not si
test cx, 86
cmp al, 19
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], cx
sbb dl, dl
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
movzx ebx, bx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdi]
bts eax, 209
sub al, bl
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx]
and sil, al
xor esi, 47
or ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
