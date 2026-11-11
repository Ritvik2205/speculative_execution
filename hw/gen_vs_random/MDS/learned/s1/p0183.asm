.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 678817098
or dil, bl
test dil, -80
and bl, 68
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
xor bl, cl
and dx, 3
xor al, dl
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
xor al, 55
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
test rax, 1978892575
xor eax, -127
or dil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
