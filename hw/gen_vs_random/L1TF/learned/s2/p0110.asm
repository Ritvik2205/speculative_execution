.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
test bl, -92
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
and rcx, 31
or bl, -5
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
or dl, -67
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rdi
or al, dl
and si, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
