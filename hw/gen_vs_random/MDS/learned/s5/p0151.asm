.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
and si, -121
and bl, al
or al, 24
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 45
xor al, 115
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 20
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and si, -121
test al, -81
and esi, 77
and dil, -39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
