.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
not bl
or al, al
and rax, 41
xor dx, 72
and ax, 19740
and bl, 68
or rdx, -109
xor cl, dl
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
or bx, 97
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test sil, -96
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
sbb bl, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
