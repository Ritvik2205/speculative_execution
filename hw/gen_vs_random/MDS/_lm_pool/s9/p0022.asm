.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -78
or al, -17
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
or cl, sil
xor cl, -13
or ax, 16560
and rax, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rax]
and cl, cl
or sil, -49
bt bx, di
test eax, 158941032
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
test bl, -114
or rcx, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
