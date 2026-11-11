.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg bl
add al, 122 # instrumentation
cmovns edx, ebx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdx
cmovno edi, edx
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
adc eax, -79
mov rbx, 9101099553822202722
sub rsi, 26
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
mov rax, -8696242625349627833
and eax, -24
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
add dl, al
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
or cl, bl
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 2
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and sil, -49
imul rdi
xor al, 102
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdi], cx
btc dx, 119
add cl, 122 # instrumentation
cmovz rdx, rdi
xor ax, 28088
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
movzx rax, cl
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
sub al, 119
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
cmp bl, al
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
xchg rcx, rax
or edi, eax
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
sub eax, 2030845821
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
add cl, -42 # instrumentation
adc dl, sil
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
