.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
adc al, sil
setb bl
test bl, 12
lea rdi, qword ptr [rsi + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
jmp .bb_0.1
.bb_0.1:
cmp di, 45
or al, -2
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -12952
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
