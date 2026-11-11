.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, -24
mov rbx, 9101099553822202722
add cl, 122 # instrumentation
cmovz rdx, rdi
xchg rcx, rax
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdx
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
xor al, -2
mov rax, -8696242625349627833
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
add dl, al
neg bl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
cmp bl, al
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
or edi, eax
or cl, bl
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
adc eax, -79
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 2
imul rdi
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
add cl, -42 # instrumentation
adc dl, sil
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
add al, 122 # instrumentation
cmovns edx, ebx
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdi], cx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
xor ax, 28088
cmovno edi, edx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and sil, -49
sub eax, 2030845821
sub al, 99
sub rsi, 26
movzx rax, cl
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
btc dx, 119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
