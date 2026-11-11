.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -104 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
btc edx, 66
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
jmp .bb_0.2
.bb_0.2:
btr cx, 57
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
sbb rbx, -117
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and al, -68
jmp .bb_0.4
.bb_0.4:
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
