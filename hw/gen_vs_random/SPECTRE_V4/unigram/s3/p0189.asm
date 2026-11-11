.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdi]
cmovnl di, bx
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rsi
mul eax
cmovle bx, di
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 15
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rbx
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
cmp di, -8
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
cmovnl rax, rbx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1412107342
and rcx, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rcx]
and dx, -107
bt rdx, 75
and bl, cl
cmovbe edx, eax
and rdx, 0b1111111111111 # instrumentation
test cx, 77
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
neg eax
mov rax, -4627568876460436527
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 36
not ecx
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], bx
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 65
sub cx, -114
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
and ebx, -4
not dx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
cmovnb rax, rbx
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 98
test eax, 1600638830
and cl, -101
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdi
xchg ax, si
or si, 85
and rcx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rcx]
mov sil, 83
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
add rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
