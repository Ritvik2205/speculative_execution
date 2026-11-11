.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
test rax, -1579405415
and dil, 125
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
or dl, -97
test al, bl
test bl, dil
xor di, -83
and dil, dil
xor si, 91
test al, sil
and al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
