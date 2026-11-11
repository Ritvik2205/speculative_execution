.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -87
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 95
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
add ebx, 84
and rcx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], edx
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rbx
setle dl
neg ebx
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
add cl, 121 # instrumentation
cmovs edx, edx
and rcx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rcx]
test edi, 30
and rdx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdx]
xor dx, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
