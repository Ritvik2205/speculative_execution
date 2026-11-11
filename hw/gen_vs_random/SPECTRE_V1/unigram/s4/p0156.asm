.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 73
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 85
add dl, -105 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
add ecx, 10
sets cl
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdi
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
test di, 35
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
imul ebx, edx
add cl, 20 # instrumentation
cmovnbe rsi, rcx
setnz cl
setnz sil
adc sil, -115
cmovno rbx, rcx
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
