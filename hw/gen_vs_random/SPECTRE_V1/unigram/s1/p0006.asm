.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc sil, -18
add dl, 92 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rbx]
cmovl cx, si
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
adc sil, dl
sbb cl, -122
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
lea cx, qword ptr [rdx + rdx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 112 # instrumentation
setl dl
and rdi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdi]
cmovbe rax, rdi
cmovb cx, cx
cmovo ecx, ecx
add al, -125 # instrumentation
cmovb eax, esi
lea rdi, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
