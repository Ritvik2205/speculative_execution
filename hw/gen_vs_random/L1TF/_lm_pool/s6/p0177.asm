.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
sbb edx, 23
jmp .bb_0.1
.bb_0.1:
add al, al
or al, -48
add al, 56
lea rbx, qword ptr [rdx + rsi + 12]
xor sil, dl
and dil, al
adc al, 70
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], esi
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
