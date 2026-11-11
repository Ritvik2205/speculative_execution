.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 28 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rcx]
sub cx, 68
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
test edx, 98
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
xor rcx, 74
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 78
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], bx
and rdi, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdi]
add ax, 6656
and rcx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
xor ecx, 8
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 71
sets dl
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
