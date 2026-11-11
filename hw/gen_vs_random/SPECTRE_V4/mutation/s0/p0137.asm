.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov bl, dl
cmovl esi, ecx
cmovs rax, rdx
xor ax, si
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rax
test esi, -2111618709
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
sub di, bx
xchg rbx, rax
or rdx, rbx
xor dl, dl
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
or cl, al
xchg cl, cl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
xor dl, cl
imul dl
imul rdx, rdi
add cl, -33 # instrumentation
not dl
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
cmovnz rbx, rsi
cmp dl, cl
cmp dl, 83
cmovp rbx, rcx
inc ebx
adc rsi, rdi
and rax, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
not cl
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], -25929
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], -112
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
adc bl, bl
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi], -38
or rdi, -41
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 65
adc rdi, rbx
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], si
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 4
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], di
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 13
or si, 0b1000000000000000 # instrumentation
bsr dx, si
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rcx
xor dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
