.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
xor rbx, 89
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and al, bl
xor cl, -13
or cl, 30
and rax, -2058103810
xor bl, 67
xor al, -19
xor ax, -4010
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
xor cl, dil
xor rax, -1499464454
or al, 74
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
