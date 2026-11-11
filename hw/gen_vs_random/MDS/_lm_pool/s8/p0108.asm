.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
or sil, bl
not dil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
jmp .bb_0.1
.bb_0.1:
bt di, bx
bts dx, 50
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 108
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
xor cl, al
and si, -121
or al, -61
or al, 37
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
xor al, 115
and al, -54
test sil, -96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
