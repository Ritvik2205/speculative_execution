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
test eax, 1600638830
sub cl, -73
cmp rbx, rdx
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rsi
xchg ecx, ebx
sub al, 127
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rbx
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
sub al, 127
and edi, edx
adc al, 41
cmovz rbx, rdx
cmp cl, al
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
cmovnle rcx, rcx
sub si, bx
inc dl
and rdx, 0b1111111111111 # instrumentation
test rdx, rbx
imul dl
add al, cl
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
xchg cx, ax
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
add cl, 31 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
bts edx, 116
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], -1928332684
and bl, dl
cmp bl, al
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
cmovb ebx, ecx
add bl, al
and eax, -1948401947
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
