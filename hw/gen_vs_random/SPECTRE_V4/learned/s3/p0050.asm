.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
test bl, al
sbb bl, cl
cmp dl, 83
test dl, al
dec bl
cmp cl, bl
cmp cl, 100
lea ecx, qword ptr [rdx]
jmp .bb_0.1
.bb_0.1:
adc dl, dil
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 95
or al, -19
add dl, cl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
