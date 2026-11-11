.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -50 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], -55
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 6
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 73 # instrumentation
mov rdx, -4695514922061161705
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -89
or si, 0b1000000000000000 # instrumentation
bsf ax, si
movsx rax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
