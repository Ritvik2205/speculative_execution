.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 12 # instrumentation
cmovnb eax, ecx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
add al, 10
or al, dl
test bl, -8
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 27
and dil, -93
and rcx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
