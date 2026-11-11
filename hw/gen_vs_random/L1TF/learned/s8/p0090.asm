.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
cmp esi, 110
jmp .bb_0.1
.bb_0.1:
xchg al, bl
xor bl, dil
jmp .bb_0.2
.bb_0.2:
and dl, 59 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], -784964246
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
