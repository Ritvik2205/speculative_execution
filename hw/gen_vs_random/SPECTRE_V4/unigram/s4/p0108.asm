.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 47
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdi
cmovnz si, bx
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
mul rbx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add cl, -37 # instrumentation
adc eax, -39
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rax], ebx
and ax, 35
btr si, ax
and rsi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rsi]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdi
cmovnp rdx, rsi
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rdx], di
xor bl, 93
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
adc cl, 16
cmovnb si, si
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rax
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
bt ebx, esi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ecx
imul ax, si, 87
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 22
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
imul dl
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
adc si, 92
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
cmovnp ebx, eax
mov edx, 55
imul dx, ax
not rsi
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
or dl, dil
sbb eax, 2051746726
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
xor di, cx
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 66
imul dx
cmovb rax, rdi
cmovnbe si, bx
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rbx
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], cx
imul cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
