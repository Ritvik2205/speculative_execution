.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
sub rsi, 26
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
sub eax, 2
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
cmp bl, al
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 2
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
add dl, al
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
neg bl
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
movzx rax, cl
and sil, -49
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add al, 122 # instrumentation
cmovns edx, ebx
add cl, -42 # instrumentation
adc dl, sil
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
and eax, -24
or edi, eax
mov rbx, 9101099553822202722
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdx
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx]
adc eax, -1513455903
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
xchg rcx, rax
xor al, 102
xor ax, 28088
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
sub al, 98
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
imul rdi
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
mov rax, -8696242625349627833
btc dx, 16
cmovno edi, edx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdi], cx
or cl, bl
add cl, 122 # instrumentation
cmovz rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
