.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc eax, -1513455903
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
or edi, eax
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdi], cx
add cl, 122 # instrumentation
cmovz rdx, rdi
and sil, -49
movzx rax, cl
cmp bl, al
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
xchg rcx, rax
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and eax, -37
xor al, -2
neg bl
mov rbx, 9101099553822202722
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
btc dx, 16
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
cmovno edi, edx
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
sub eax, 2030845821
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 2
xor ax, 25554
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
sub rsi, 26
or cl, bl
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
imul rdi
mov rax, -8696242625349627833
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx]
add cl, -42 # instrumentation
adc dl, sil
sub al, 119
add dl, al
add al, 122 # instrumentation
cmovns edx, ebx
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
