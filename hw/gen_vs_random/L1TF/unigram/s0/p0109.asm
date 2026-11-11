.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 2
and rbx, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdi]
imul rbx, rax
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 91
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], al
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 14
jmp .bb_0.1
.bb_0.1:
sbb dx, bx
xor dl, -82
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], si
adc al, 36
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rbx
add al, 61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
