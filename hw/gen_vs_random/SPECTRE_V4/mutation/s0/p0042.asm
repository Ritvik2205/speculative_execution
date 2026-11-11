.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle rcx, rcx
sub al, 54
inc dl
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
cmovz rbx, rdx
sub si, bx
add al, cl
and bl, dl
cmp cl, dl
sub cl, 92
add al, 23 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], -15
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], -1928332684
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rax
mov cx, -22668
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rbx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
imul dl
sub al, 59
bts bx, di
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rsi
bts edx, 116
and rdx, 0b1111111111111 # instrumentation
test rdx, rbx
cmp rbx, rdx
test eax, -31785616
add bl, al
adc al, -59
xchg cx, ax
add al, 20 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ebx
add cl, 31 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
and eax, -1948401947
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
cmp cl, al
and rbx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rbx]
cmp bl, al
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
xchg ecx, ebx
cmovb ebx, ecx
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rbx]
and edi, edx
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
