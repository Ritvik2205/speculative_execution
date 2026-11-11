.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], si
cmp esi, esi
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rax
bts cx, cx
add dl, 126 # instrumentation
setnb cl
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], si
and si, bx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], -32
inc bx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 75
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
imul edx
xor si, ax
setnz cl
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
