.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 59 # instrumentation
cmovns eax, edx
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -64
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], -105
inc cl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and al, 76
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 358568732
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rcx], esi
jmp .bb_0.1
.bb_0.1:
lea rbx, qword ptr [rsi + rsi]
bts rax, 45
or ebx, edx
cmp cl, -71
adc al, 36
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
sbb dl, cl
xchg ecx, eax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdi]
mul rax
test al, 56
cmovnbe di, di
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 43
mov al, -26
and rdi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdi]
add sil, 18
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], -85
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdx
add eax, 760523556
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
