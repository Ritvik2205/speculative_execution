.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, rbx
or cl, 6
and dl, -73
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 77
bts bx, cx
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], dx
and dl, 18 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rdx]
bts edi, 248
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
xor rsi, -117
and bl, 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
and cl, cl
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rsi
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
cmovnb esi, eax
or esi, -110
and rsi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rsi]
cmovz cx, bx
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
