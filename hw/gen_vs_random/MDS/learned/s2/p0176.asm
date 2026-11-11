.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 66
or dl, -97
and al, dil
or al, 25
and bl, sil
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and dx, 3
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
or dil, -78
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
test dil, -80
xor dl, 8
xor dx, 67
cmovno rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
