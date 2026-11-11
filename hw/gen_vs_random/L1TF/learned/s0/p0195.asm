.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 104 # instrumentation
mov esi, 96
lea ax, qword ptr [rsi + rdx + 74]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
jmp .bb_0.1
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
sbb al, 61
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
jmp .bb_0.3
.bb_0.3:
or al, -2
xor bl, dl
jmp .bb_0.4
.bb_0.4:
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
