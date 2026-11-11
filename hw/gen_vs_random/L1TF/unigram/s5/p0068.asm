.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 94
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rbx]
sub edx, eax
add al, 66 # instrumentation
cmovnp eax, esi
adc ecx, ecx
mov bl, dil
and rsi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
add al, 100 # instrumentation
lea dx, qword ptr [rax]
sbb bl, cl
cmp rcx, 60
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rsi]
sbb al, cl
cmovnz rbx, rcx
btc si, di
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
