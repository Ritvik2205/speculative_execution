.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, sil
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], 15
inc dx
movsx rax, bx
add dl, dil
dec al
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
adc bl, sil
add cl, 18 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rcx]
add bl, 102 # instrumentation
cmovnp eax, esi
cmp esi, 123
btr rbx, 97
and ecx, 71
cmovl cx, bx
btc cx, 3
and rcx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rbx], rax
adc rsi, 82
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
imul sil
and rbx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 0
cmovb rdi, rax
sub dl, bl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edi
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 7
test ecx, 860867711
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
sub al, 86
and rdi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rbx]
cmovo rax, rcx
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 46
bt ebx, 39
btr rax, rdx
or bl, 61
imul bx, ax
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 70
cmovle rsi, rax
and rax, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rax]
imul dl
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
cmovnz bx, bx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
