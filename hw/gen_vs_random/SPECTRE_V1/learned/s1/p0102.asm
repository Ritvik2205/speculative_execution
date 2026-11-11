.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rsi, rdx
sbb esi, -4
setnb al
sbb al, bl
xor dl, bl
sbb sil, 126
and rsi, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rsi]
test dl, 59
cmovle edx, esi
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], ebx
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 100
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 8958
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rax
cmovp ebx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
