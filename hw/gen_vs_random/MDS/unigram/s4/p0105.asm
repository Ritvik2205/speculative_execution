.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp dx, bx
or bl, -52
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
bts dx, 50
bt ecx, 13
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
test dl, 9
and rax, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rax]
btc cx, ax
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
or cl, -36
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, esi
cmovnb di, ax
and dil, -62
and dl, -73
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], ax
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
or eax, 1725503461
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
