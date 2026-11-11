.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], 53
and rdx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdx]
dec ax
add cl, 123 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], -98
jmp .bb_0.1
.bb_0.1:
sbb rdx, rdi
add al, -109 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
xor edi, 55
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 1
add al, -71 # instrumentation
adc eax, eax
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
setnle cl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
