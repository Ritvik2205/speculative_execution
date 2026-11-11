.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 45
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -98
xor eax, -2123070438
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
or al, -2
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, -3
and bl, dl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 86
or sil, -44
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
