.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -104 # instrumentation
lea rbx, qword ptr [rax + rdx + 51]
xchg sil, dl
and rbx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rcx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rcx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
xor dl, cl
cmp dil, dl
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
add sil, -95 # instrumentation
lea si, qword ptr [rdx + rdx + 18]
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
cmp cl, dl
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
add cl, -56 # instrumentation
sbb rcx, 92
adc cl, -81
setnb bl
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
