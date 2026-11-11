.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, cl
add rdi, 111
mov al, dl
cmovns ecx, edi
adc eax, -983562873
mov edi, 412386591
and rsi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rsi]
btc rsi, 77
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx], -68
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
movzx rdi, sil
and cl, bl
btr rcx, 134
not dx
adc cl, al
imul ecx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 2
and cl, cl
not bl
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rcx]
xchg rdi, rax
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
sbb cx, 106
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
sub al, cl
bts ax, 155
sub dl, dl
cmovnz rdx, rcx
cmovb edi, eax
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 2
xor rax, 944027678
cmp eax, -1538116527
test di, -19523
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -37
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
mov cl, bl
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ecx
add al, 66 # instrumentation
cmovp ebx, ebx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
