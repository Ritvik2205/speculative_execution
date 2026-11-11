.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
sub cl, cl
and rax, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rax]
test cl, cl
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], si
xor ax, cx
sbb sil, sil
and rdi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
test edi, -1249897727
cmovns dx, cx
xchg ebx, eax
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 69
or dx, 0b1000000000000000 # instrumentation
bsr ax, dx
cmovnl cx, bx
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edi
and rax, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rax]
movzx edx, al
imul cl
and dil, al
inc si
mul ax
or cl, 5
test cl, sil
and rdi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], ecx
mul cl
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 4
add dx, -90
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
cmovl rax, rdx
sbb sil, bl
or ebx, 15
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
not bx
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
or dil, dl
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 99
test rcx, -2118888343
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 61
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
adc rbx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rcx]
sbb bl, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
