.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
cmp dil, bl
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
or al, dil
xor dl, cl
test al, 84
and cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
