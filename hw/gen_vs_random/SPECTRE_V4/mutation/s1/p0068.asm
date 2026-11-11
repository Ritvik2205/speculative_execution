.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, al
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
cmovno edi, edx
and eax, -24
imul rdi
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
cmp bl, al
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx]
sub rsi, 26
btc dx, 16
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdi], cx
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
or cl, bl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
movzx rax, cl
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
xor al, 102
adc eax, -79
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
xchg rcx, rax
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
xor ax, 28088
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
add al, 122 # instrumentation
cmovns edx, ebx
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
or edi, eax
sub eax, 2030845821
sub al, 119
mov rax, -8696242625349627833
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
mov rbx, 9101099553822202722
neg bl
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdx
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 2
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
and sil, -49
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
add cl, 122 # instrumentation
cmovz rdx, rdi
add cl, -42 # instrumentation
adc dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
