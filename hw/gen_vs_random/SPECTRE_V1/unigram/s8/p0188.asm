.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
cmp dl, bl
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -28
add dl, 59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 29
test cl, dl
or al, 19
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dil
and rbx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rbx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and al, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
