.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
cmp esi, 33
and rdx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and cl, dl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
cmp cl, al
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
sbb dil, -93
cmovs si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
