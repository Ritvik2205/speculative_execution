.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 2
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rsi], ax
bt ecx, edi
and rdx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdx]
add bl, -58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 14
add al, -76 # instrumentation
cmovnbe cx, cx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 32
add cl, 42 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
btr ebx, 67
add dl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
