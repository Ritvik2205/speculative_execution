.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, 83
and bl, al
cmovl dx, cx
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 7
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], esi
test sil, al
and rsi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 31
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
not dl
and dl, -98
not dil
or si, -97
lea rbx, qword ptr [rdx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
