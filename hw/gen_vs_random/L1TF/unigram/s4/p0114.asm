.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 48
add al, -49 # instrumentation
setnb dl
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
test cl, 93
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 43
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
cmovz eax, ebx
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 23
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 30
not bl
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], -31
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
