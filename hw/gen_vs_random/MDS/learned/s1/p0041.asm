.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -1 # instrumentation
cmovnb cx, si
and dl, dil
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdx], bx
sbb al, 61
or ax, -17790
test al, -59
or rax, -285849275
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edx
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 1
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdi]
or ax, -4635
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 85
cmovnle cx, cx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 38
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 52
test sil, 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
