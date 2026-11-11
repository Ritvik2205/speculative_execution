.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -4
or al, bl
or al, al
xor rbx, 89
or cl, 7
test si, 71
xor cl, sil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
or sil, -78
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
xor dl, 8
or rcx, 54
jmp .bb_0.5
.bb_0.5:
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
xor rbx, 89
test al, bl
jmp .bb_0.6
.bb_0.6:
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 59
cmovnp rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
