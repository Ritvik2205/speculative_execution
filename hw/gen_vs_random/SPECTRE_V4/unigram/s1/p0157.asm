.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 43
btc rax, 17
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
test edi, ecx
add bl, -18 # instrumentation
mov rbx, rdx
sbb dl, dl
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], dx
add al, 123 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
sbb dil, 26
mov rax, -8696242625349627833
cmovb edx, ebx
and al, cl
or sil, 66
dec rdx
sub sil, -36
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
add sil, -75 # instrumentation
adc sil, 29
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 93
sub ax, 24441
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rcx
add dl, 12 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], sil
cmovb si, si
adc bl, 89
movzx ebx, bx
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax]
imul rsi, rdx
cmovp dx, si
imul rdi
cmp bl, 13
bts rcx, 52
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
sbb dil, 43
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
xor al, 102
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], bl
cmovns esi, ecx
and rdx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdx]
test di, 30
xor dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
