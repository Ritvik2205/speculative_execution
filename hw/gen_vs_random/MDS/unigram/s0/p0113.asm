.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, bl
test al, dil
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 103
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
btc rax, rax
jmp .bb_0.1
.bb_0.1:
xor cx, ax
bts eax, 222
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 39
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 15
cmovo edx, ecx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 55
and rdx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdx]
btc bx, 104
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
and rax, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rax]
btc rax, rdx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
