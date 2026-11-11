.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, ax
xor rbx, 89
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
btr di, dx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
xor di, 40
jmp .bb_0.1
.bb_0.1:
or al, -78
and al, -54
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
or edx, -78
test bl, cl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
