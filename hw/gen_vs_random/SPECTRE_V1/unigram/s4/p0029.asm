.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], esi
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
bt cx, bx
lea si, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb rbx, 90
and rdi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdi]
xor edi, 98
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], 69
lea eax, qword ptr [rdx + rbx]
xor cl, -103
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
setnp dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
