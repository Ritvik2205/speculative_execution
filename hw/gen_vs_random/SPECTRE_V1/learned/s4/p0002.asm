.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rsi]
adc al, -82
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
movzx ebx, dil
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
