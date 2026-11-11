.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
test bl, 106
cmovb edx, ecx
and rsi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rsi]
btc rsi, rbx
and cl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 6
jmp .bb_0.1
.bb_0.1:
add cl, -84 # instrumentation
xchg rdx, rax
jmp .bb_0.2
.bb_0.2:
lea rsi, qword ptr [rdx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
xor al, 77
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 56
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
bts rsi, 89
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 3
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
or rax, -2043376621
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
