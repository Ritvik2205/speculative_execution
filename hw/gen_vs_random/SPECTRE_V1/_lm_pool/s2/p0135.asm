.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
adc dil, bl
sub al, dil
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
sbb dil, -93
sbb cl, sil
test bl, -8
and rdi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdi]
adc cl, sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
xchg eax, ebx
and cl, sil
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
