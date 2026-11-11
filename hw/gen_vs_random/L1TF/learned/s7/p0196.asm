.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 46
add dl, 22
jmp .bb_0.1
.bb_0.1:
add bl, 104 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rax
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 92
adc dl, -12
or bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
