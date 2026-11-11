.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
cmovnb rdx, rsi
cmovo esi, eax
btr rdi, 129
and rax, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rax]
bt edi, 225
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
test al, cl
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
cmovnbe di, cx
and rbx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rsi
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
btc di, 233
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rbx
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
cmovnz si, bx
and rdi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rdx
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
