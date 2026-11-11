.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
xor bx, 74
test sil, 17
and al, 14
xor bl, -102
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
test esi, 425331143
xor rax, -270810088
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
and al, bl
or cl, 30
xor bl, sil
xor dil, -124
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
