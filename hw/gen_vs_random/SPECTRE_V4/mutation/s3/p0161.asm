.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
add cl, 31 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rsi
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1103421604
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rax
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
bts bx, di
sub al, 59
and edi, edx
xchg cx, ax
cmovb ebx, ecx
cmp bl, al
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
cmp cl, dl
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
mov cx, -22668
cmovnle rcx, rcx
adc al, 116
cmp cl, al
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
add al, 20 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ebx
and eax, -1572488789
add bl, al
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rbx
test eax, 1600638830
and bl, dl
imul dl
sub al, 29
and rbx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rbx]
xchg ecx, ebx
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
cmovz rbx, rdx
and rdx, 0b1111111111111 # instrumentation
test rdx, rbx
inc dl
add al, 23 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], -15
bts edx, 116
sub cl, -127
sub si, bx
add al, cl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
cmp rbx, rdx
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
