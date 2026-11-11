.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, dx
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
xor cl, 15
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
or dil, 16
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
xor sil, al
jmp .bb_0.1
.bb_0.1:
test eax, 424329527
or eax, esi
btr ax, bx
or dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
