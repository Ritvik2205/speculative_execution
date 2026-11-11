.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdi
test al, cl
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], cl
and al, -54
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
cmp edx, 44
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
setnz al
add cl, -123 # instrumentation
cmovnp rax, rsi
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 1594154558
bswap esi
sbb sil, -78
add al, -39 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdx]
setnb bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
