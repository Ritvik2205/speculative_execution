.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -79 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], eax
setns cl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 1
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
dec bx
and rdx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and al, al
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
