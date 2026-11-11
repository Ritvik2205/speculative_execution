.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
or cx, 46
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 95
xor bl, cl
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 47
cmovb ax, ax
test al, dl
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
sbb dil, dil
test cx, ax
inc rdi
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
cmovnbe rsi, rax
add cl, -21 # instrumentation
adc rcx, 97
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 15
and rdx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 69
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rax], ax
add dl, dl
or bx, 0b1000000000000000 # instrumentation
bsr cx, bx
movsx edx, bx
and ax, 35
sub bl, dl
dec al
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], cx
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rcx], eax
and rcx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rcx]
test dil, dil
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
sbb eax, -984782068
and rax, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 13
cmovns si, bx
sbb al, bl
btc ax, si
add dl, -114 # instrumentation
cmovl cx, dx
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
xor bl, 93
add al, 122 # instrumentation
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rax], edi
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], di
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
