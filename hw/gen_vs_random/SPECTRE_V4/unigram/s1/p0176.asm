.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 32
adc dl, bl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and cl, 58
add al, dil
or di, dx
and rsi, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 32
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], ax
test rax, -331426050
and dil, dl
or ebx, esi
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
adc cx, 78
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 87
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 54
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], si
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
test edx, 573099753
and rcx, -102
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
adc bl, 89
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
add edi, ebx
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 39
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
mov rsi, 41
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
add dil, 56 # instrumentation
cmovle rax, rdi
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdx]
or al, 109
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 81
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], si
or bl, 52
and rax, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rax]
btc eax, 30
and rbx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rbx]
add dl, cl
cmovnbe rax, rbx
and ax, 35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
