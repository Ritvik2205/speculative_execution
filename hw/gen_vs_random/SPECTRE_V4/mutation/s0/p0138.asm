.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, al
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
add cl, 31 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1103421604
and rdx, 0b1111111111111 # instrumentation
test rdx, rbx
test eax, 1600638830
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rax
sub si, bx
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
add bl, al
sub al, 29
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
cmovz rbx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
xchg cx, ax
cmp cl, dl
and edi, edx
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rsi
sub cl, -119
imul dl
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
add al, cl
cmp cl, al
bts bx, di
cmovb ebx, ecx
and eax, -1948401947
and bl, dl
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rbx
adc al, -70
mov cx, -22668
add al, 20 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
inc dl
cmp rbx, rdx
cmovnle rcx, rcx
and rbx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rbx]
bts edx, 116
sub al, 63
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
add al, 23 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], -15
and rbx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rbx]
xchg ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
