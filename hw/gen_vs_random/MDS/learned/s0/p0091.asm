.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -17 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
cmovl eax, eax
bt dx, ax
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
and rsi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rsi]
adc eax, 4
xor al, -28
setnbe cl
jmp .bb_0.1
.bb_0.1:
add dl, -121 # instrumentation
cmovnp esi, edx
xor eax, 73
xor al, -119
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ebx
cmovz si, ax
not al
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 31
xor cl, 122
or al, -8
btc esi, 226
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rcx
bts bx, cx
and dl, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
