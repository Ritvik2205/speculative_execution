.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rax, rax
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 23
add dl, -27 # instrumentation
sets dl
xor bl, -38
and rdx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
adc si, 6
sbb ecx, 9
bt rcx, 68
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
imul dx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
test sil, 13
adc dx, -112
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 19
and rcx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
