.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
test cl, al
xor rax, -270810088
and rax, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rax]
and dl, sil
or bl, -62
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
or al, dil
and rcx, -63
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
xor rax, -345061362
xor al, 115
xor dil, -3
xor bl, 67
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
xor rax, -345061362
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
