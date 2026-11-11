.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
xor sil, -15
and sil, 74
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
or cx, -42
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
test cl, 73
not al
or bl, -54
or al, 16
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
and al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
