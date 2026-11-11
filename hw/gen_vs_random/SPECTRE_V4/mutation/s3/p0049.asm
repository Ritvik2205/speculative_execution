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
test eax, -31785616
sub cl, -127
cmp rbx, rdx
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rsi
xchg ecx, ebx
sub al, 0
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rbx
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
sub al, 55
and edi, edx
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], esi
movzx ebx, dil
not dl
bts dx, 96
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 0
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 1 # instrumentation
add dl, -32 # instrumentation
cmovp rdx, rbx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
cmovl rcx, rsi
cmovnbe rbx, rdi
test al, -24
cmovl si, di
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
cmovl rsi, rax
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
