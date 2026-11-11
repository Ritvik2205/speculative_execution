.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or si, 0b1000000000000000 # instrumentation
bsf bx, si
adc cl, dl
sbb al, dil
cmovl rbx, rax
sbb al, -3
xor dl, -123
and rax, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rax]
sub al, cl
add cl, -59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
sbb cl, cl
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], esi
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], esi
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
adc al, 41
xor bl, bl
or al, 1
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 84
add al, sil
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
inc rdi
and rcx, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rbx], eax
cmovl rcx, rdi
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
add eax, ecx
test cx, dx
and rdx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rbx]
add cl, -57 # instrumentation
cmovno rcx, rdx
and rdx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdx]
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and ax, si
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rax], ax
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
cmovns rax, rcx
btc edi, 125
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 38
add dl, -85 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
cmp al, al
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
cmovle rax, rdi
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
sub rcx, rcx
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
