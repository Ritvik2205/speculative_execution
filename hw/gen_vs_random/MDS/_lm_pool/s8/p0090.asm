.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -81
xor bl, -61
and bx, 16
or dil, -78
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
or rbx, -72
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 70
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
xor dl, sil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
xor rcx, 71
and dil, al
test dil, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
