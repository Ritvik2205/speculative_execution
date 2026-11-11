.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
xor dil, -5
or al, bl
and cl, sil
test dl, cl
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
test rdi, 8
bt dx, ax
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
test al, bl
test cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
