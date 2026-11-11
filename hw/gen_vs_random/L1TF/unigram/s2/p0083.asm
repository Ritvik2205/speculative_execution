.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb esi, edx
bts esi, 49
or cl, -78
sbb di, 80
and bl, bl
neg rdi
lea ecx, qword ptr [rdx + rcx]
test rcx, 81
jmp .bb_0.1
.bb_0.1:
add dl, 47 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
add cl, -20
setz al
adc bl, bl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 66
or al, -57
add sil, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
