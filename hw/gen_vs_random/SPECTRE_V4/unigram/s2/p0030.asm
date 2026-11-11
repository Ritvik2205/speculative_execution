.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
xor ebx, ecx
xor al, sil
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
add ax, -13169
bt edi, ebx
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
or al, bl
test dil, 21
or dil, dl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], bl
inc eax
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], dx
imul bx
sub bl, 17
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dil
imul edi, ebx, 60
adc cl, cl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
add dl, -114 # instrumentation
cmovl ax, cx
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and edi, 6
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
and rdi, -2
add al, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edx
sbb bl, bl
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rsi]
and al, -36
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 9
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ebx
xor edi, 33
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
mov dil, bl
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
cmovnl rdx, rsi
mov bl, 97
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
movzx rdi, si
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
