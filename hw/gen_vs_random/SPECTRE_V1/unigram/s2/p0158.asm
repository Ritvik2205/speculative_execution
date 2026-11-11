.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, dil
test rdx, 1657596343
add sil, 2
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
cmovle cx, dx
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
sbb dil, al
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add eax, -371144449
cmovle ebx, ecx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 88
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 57
cmovnle rdx, rsi
and dil, dil
and rax, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
sub bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
