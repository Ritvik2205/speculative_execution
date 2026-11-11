.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, dil
or al, dil
test eax, -571234566
not bl
btr ecx, ebx
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
btr bx, si
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and dl, -73
xor al, 55
test bl, 65
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
