.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdi
add al, 122 # instrumentation
cmovns edx, ebx
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
mov rbx, 9101099553822202722
cmovno edi, edx
neg bl
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
mov rax, -8696242625349627833
add dl, al
or cl, bl
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
xor bl, sil
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 75
add cl, -42 # instrumentation
adc dl, sil
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdx
xchg rcx, rax
xor ax, 28088
xor al, 29
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdi]
cmovno dx, ax
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
movzx ecx, sil
cmovnbe rdx, rcx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], cx
cmovnbe rax, rdx
movzx ecx, bl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rbx], edi
and rsi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 28
sbb al, cl
xchg dl, dil
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
cmp ax, 23131
test ax, bx
and rbx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rbx]
or dl, dil
or eax, 1802312508
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
