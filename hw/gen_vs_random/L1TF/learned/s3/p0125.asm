.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -64 # instrumentation
cmovnle edx, esi
add al, 93
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 10
sbb al, -23
add al, 74
xor ax, 34
xchg edx, ecx
adc al, 70
xor al, dl
lea rsi, qword ptr [rdx]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
