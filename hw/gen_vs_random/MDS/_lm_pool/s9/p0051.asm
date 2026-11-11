.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
and eax, 454700988
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -100
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
test sil, bl
xor si, 80
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
xor rax, 459999114
jmp .bb_0.2
.bb_0.2:
test dil, sil
or dil, cl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
