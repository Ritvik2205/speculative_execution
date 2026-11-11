.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
xor bl, sil
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 45
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
bts di, 36
jmp .bb_0.1
.bb_0.1:
cmovnle rcx, rax
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
or edx, 17
sbb dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
