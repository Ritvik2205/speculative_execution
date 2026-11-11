.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt di, cx
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
movsx ecx, cl
setnp bl
xor rcx, 44
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -71
inc dx
sbb cl, -122
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rax]
adc dl, dil
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edi
inc ax
sbb dl, -23
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
