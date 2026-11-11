.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 13
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 3
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
test dil, bl
or al, 54
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
xor bl, -61
test bl, al
jmp .bb_0.1
.bb_0.1:
or dl, 85
xor dl, dil
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
or cl, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
