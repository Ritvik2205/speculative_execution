.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
or ecx, eax
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
xor sil, 64
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 17
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
adc cl, dil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 83
lea rsi, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rax, rcx
and sil, 93
sbb rax, 1183957102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
