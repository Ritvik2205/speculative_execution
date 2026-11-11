.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rbx
add al, 23 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], -15
add cl, 31 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rsi
cmp rbx, rdx
cmovz rbx, rdx
and bl, dl
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
and eax, -1572488789
imul dl
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
bts bx, di
inc dl
and rbx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rbx]
cmovnle rcx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
add al, cl
cmp cl, al
sub al, 0
add bl, al
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
cmovb ebx, ecx
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
test eax, 1947430392
and edi, edx
xchg ecx, ebx
add al, 20 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
sub si, bx
xchg cx, ax
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
mov cx, -22668
cmp bl, al
sub cl, -32
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ebx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1103421604
adc al, -70
cmp cl, dl
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rax
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
sub al, -84
and rdx, 0b1111111111111 # instrumentation
test rdx, rbx
bts edx, 116
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
