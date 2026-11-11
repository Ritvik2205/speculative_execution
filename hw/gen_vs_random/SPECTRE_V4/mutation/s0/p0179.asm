.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 23 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], -15
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rax
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
mov cx, -22668
and rbx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rbx]
bts bx, di
add al, 20 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rbx]
cmp cl, dl
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ebx
test eax, 1947430392
sub cl, -32
cmp rbx, rdx
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rsi
xchg ecx, ebx
sub al, 69
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rbx
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
sub al, 59
and edi, edx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rcx
test ecx, 860867711
cmovnp esi, edi
movsx di, dil
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 1 # instrumentation
add cl, 40 # instrumentation
cmovnp rdx, rcx
movsx rdx, ax
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
mov bl, 106
adc cl, 111
add ax, 6694
adc dl, al
cmovnb rsi, rdi
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
add dl, 74 # instrumentation
cmovle edx, ebx
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
cmp rdx, -49
cmovno dx, ax
sub al, 55
inc cl
cmovnl cx, dx
and si, -70
cmovle rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
