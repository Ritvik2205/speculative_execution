.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], si
lea edx, qword ptr [rdi + rdi + 74]
lea edx, qword ptr [rdx + rcx + 22]
cmp cl, 30
and sil, al
add bl, 124 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rcx]
add dil, dil
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cdq
xchg sil, sil
add bl, -15 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], dil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
and dl, bl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 91
and rbx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
