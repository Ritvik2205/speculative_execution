.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 58
mov rdi, 16
sbb edx, 6
add dl, 100 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx], 76
and rdx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
bt ebx, 228
cmp bl, dl
adc dl, dil
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
and si, 68
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
dec eax
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 7
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
adc edi, 19
cmovp di, bx
cmp cl, 66
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 10
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], esi
test al, 66
bts eax, 209
cmovle edi, ecx
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
add cl, bl
cmovnl rbx, rbx
dec di
test di, 63
add dl, -114 # instrumentation
cmovl dx, si
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
inc esi
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
cmovnl ax, di
add bl, -72
add cl, 122 # instrumentation
cmovz rbx, rdx
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], dx
inc al
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
and rdi, -2
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], di
test edi, -1249897727
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 11
cmovnbe ax, dx
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
