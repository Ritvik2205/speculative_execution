.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
not al
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
bts ax, 22
and ax, -16061
test dil, cl
xor dl, cl
or bl, dil
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
