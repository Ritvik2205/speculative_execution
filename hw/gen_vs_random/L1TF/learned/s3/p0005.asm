.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rdx, rbx
xor sil, dl
xchg rcx, rdx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
inc dl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
