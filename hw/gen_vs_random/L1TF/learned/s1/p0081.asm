.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, edx
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and dil, -22
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
or bl, 114
inc dl
sub cl, -49
or al, bl
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
add dl, cl
sub bl, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
