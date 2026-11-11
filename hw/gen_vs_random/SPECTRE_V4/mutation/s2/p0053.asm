.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
neg bl
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
sub al, 99
sub eax, 2030845821
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
add cl, 122 # instrumentation
cmovz rdx, rdi
xor ax, 28088
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
add cl, -42 # instrumentation
adc dl, sil
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx]
mov rax, -8696242625349627833
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdx
xor al, 56
movzx rax, cl
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
cmp bl, al
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 2
or cl, bl
add al, 122 # instrumentation
cmovns edx, ebx
adc eax, -1513455903
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
and sil, -49
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and eax, -24
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdi], cx
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
xchg rcx, rax
btc dx, 119
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
sub rsi, 26
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
cmovno edi, edx
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
imul rdi
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
mov rbx, 9101099553822202722
or edi, eax
add dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
