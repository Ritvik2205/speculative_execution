.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
jmp .bb_0.1
.bb_0.1:
test rcx, -613256812
and ebx, 36
and rax, 79
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
or al, sil
or bl, cl
jmp .bb_0.3
.bb_0.3:
test dl, bl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
test bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
