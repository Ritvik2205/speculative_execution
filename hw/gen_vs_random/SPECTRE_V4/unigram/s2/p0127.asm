.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rdi, rdx
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax], 12
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 100
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -25
xchg di, dx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
adc rax, 519150753
and si, bx
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
cmp cl, al
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
add dl, -91 # instrumentation
cmovl rbx, rsi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 1 # instrumentation
and dx, word ptr [r14 + rdi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rdi]
adc edx, -125
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 29
xor rcx, -111
btc rax, rcx
add sil, 42 # instrumentation
movsx rcx, sil
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
xor rsi, -102
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
cmp rcx, -121
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
test al, 57
mul dil
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rbx
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rbx], bx
sbb dl, -71
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
cmovbe bx, ax
adc ebx, -55
sub bl, -98
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], cl
and rax, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rax]
test bx, 24072
and rsi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rsi]
cmp ecx, 47
adc bl, al
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 52
and rdi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
