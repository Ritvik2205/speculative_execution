.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
xor sil, -46
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
test al, -7
and rax, -2058103810
jmp .bb_0.1
.bb_0.1:
test eax, 298249463
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
btr si, dx
or cl, 39
jmp .bb_0.2
.bb_0.2:
test sil, dl
and sil, 89
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
btr ax, cx
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
xor al, 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
