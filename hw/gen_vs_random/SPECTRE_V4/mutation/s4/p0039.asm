.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt eax, 54
and si, dx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 848492318
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], ecx
sub ax, -1908
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], -59
sub rdx, rdx
mov eax, -1056201206
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], esi
adc al, dl
or edx, edi
or rax, -823069511
adc bl, al
test al, 115
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rdi
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rbx
xor bx, 106
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
and rbx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rbx]
movzx rdi, bx
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
sub eax, 1050143384
and rcx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rcx]
xchg rdi, rax
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
sbb cx, -114
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edi
sub al, cl
bts ax, 155
sub dl, dl
cmovnz rdx, rcx
cmovb edi, eax
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 2
xor rax, -111081832
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
