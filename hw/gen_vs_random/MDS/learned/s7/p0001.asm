.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, bx
xor sil, cl
or sil, al
test sil, 17
cmovnle rax, rdx
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
or dil, -41
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
and esi, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
