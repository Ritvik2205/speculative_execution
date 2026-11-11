.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -49
btc ax, 13
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
or cl, al
not cl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and cl, -6
jmp .bb_0.1
.bb_0.1:
test al, 127
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 91
and cl, dil
or al, -17
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and al, -103
xor al, 115
or al, 30
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
