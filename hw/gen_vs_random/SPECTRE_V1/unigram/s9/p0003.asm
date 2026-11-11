.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp edx, 44
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
cmovns rcx, rax
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 75
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -37
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 57
and rdx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
sbb di, -122
not esi
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
add al, 107 # instrumentation
lea ebx, qword ptr [rdx + rax + 16]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
or bx, 9
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
setnle dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
