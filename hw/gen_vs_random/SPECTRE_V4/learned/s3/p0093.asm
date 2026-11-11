.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 82
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edi
and rdi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 27
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 64
inc al
test al, dl
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 84
btr ebx, 64
or bl, dl
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
xor al, cl
bt si, cx
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 57
and rbx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rbx], 48
cmovo rbx, rbx
add bl, 110 # instrumentation
movsx ax, bl
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
adc bl, 89
mov rsi, rbx
and rcx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and bl, 26
adc al, al
and al, -36
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
bt cx, 111
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
not bx
imul cl
cmovnl rbx, rsi
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and al, bl
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], bl
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
add rcx, rsi
cmovnbe si, cx
and rsi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rsi]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
movzx rdx, ax
sbb eax, 2051746726
bt si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
