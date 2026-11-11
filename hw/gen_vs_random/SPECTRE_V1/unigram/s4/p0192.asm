.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rax
sub cl, bl
cmovs eax, ebx
cmovp bx, di
cmovb edi, esi
add dx, -103
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], eax
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], 72
or bl, al
not bl
imul rdi, rax
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
adc sil, -77
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
