.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 3
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], si
dec al
imul rcx
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
adc cl, -4
xor rsi, -3
cmovnz rdx, rdi
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], ax
xor sil, sil
and dx, dx
mov rbx, rdx
sub dil, bl
or cx, 0b1000000000000000 # instrumentation
bsr ax, cx
and rax, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
test ecx, 860867711
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
xor bx, 106
cmovnbe eax, eax
and rdx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdx]
inc dil
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 4070
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 25738
or bx, -33
sub di, 9
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
cmovnl ax, si
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
dec cx
sub bl, al
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
cmovnl si, si
cmp sil, 113
add sil, 47 # instrumentation
cmovnle ax, si
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
xor cx, -80
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rcx]
bt bx, ax
cmovo ax, ax
btr rax, rsi
xchg ecx, eax
add cl, -9
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
