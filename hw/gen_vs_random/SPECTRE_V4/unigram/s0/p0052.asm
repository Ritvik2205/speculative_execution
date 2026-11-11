.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not cx
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
and di, cx
and rcx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rcx]
cmovs rdi, rdx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], si
btc rbx, 52
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rax
and rsi, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi], -34
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 127
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], dx
imul sil
dec sil
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdi
or bl, 61
xor al, -113
mul edx
xor dx, cx
test cl, al
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], -89
and rcx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], cl
cmovz rax, rsi
mul dx
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax], 64
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 77
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rsi
test rbx, 1219566903
sub ax, 25338
cmovnz rdi, rcx
btr bx, 11
and rax, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 1
cmovnl rbx, rcx
neg edi
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
add dl, 61 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
