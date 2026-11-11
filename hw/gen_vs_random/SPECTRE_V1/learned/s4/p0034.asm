.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 56
lea rax, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 74
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rax]
xchg rsi, rdx
test sil, dil
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
adc eax, 44
and sil, 71
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 8958
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ecx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
