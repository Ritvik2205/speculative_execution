.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
adc sil, dil
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
xor dil, sil
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
or ax, 11821
jmp .bb_0.1
.bb_0.1:
or dil, sil
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
