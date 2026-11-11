.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
bts rsi, rax
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
or al, -78
xor sil, -46
xor cl, 83
and al, 49
jmp .bb_0.1
.bb_0.1:
or bl, -54
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
test cl, 0
or ebx, -104
xor cl, dil
test cx, 401
xor ax, -1005
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
