.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 42
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rax], di
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rdi
test bl, bl
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
not cl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
cmovnp rbx, rdx
xor cl, -13
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 73
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rbx], ax
xor ax, -5889
cmovbe ax, cx
bts dx, 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
