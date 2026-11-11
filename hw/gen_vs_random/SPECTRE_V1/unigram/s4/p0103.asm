.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rbx]
or sil, 3
test dl, 49
cwde
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rcx
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
sbb rsi, 12
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 85
test eax, 64
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], edx
cmovl cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
