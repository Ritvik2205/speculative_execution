.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
sub eax, -523763262
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
mov rax, -8696242625349627833
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
add cl, -42 # instrumentation
adc dl, sil
mov rbx, 9101099553822202722
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
and eax, -24
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
sub rsi, 26
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
sub al, 119
add dl, al
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
add cl, 122 # instrumentation
cmovz rdx, rdi
and sil, -49
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
adc eax, -1513455903
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdi], cx
or edi, eax
or cl, bl
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add al, 122 # instrumentation
cmovns edx, ebx
btc dx, 16
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 2
xor ax, 28088
cmovno edi, edx
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdx
neg bl
movzx rax, cl
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx]
xor al, 59
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
xchg rcx, rax
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
cmp bl, al
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
imul rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
