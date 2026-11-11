.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
and bl, dil
xor dl, al
and rbx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rbx]
xor cl, cl
jmp .bb_0.1
.bb_0.1:
or al, -2
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 58
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
test ecx, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
