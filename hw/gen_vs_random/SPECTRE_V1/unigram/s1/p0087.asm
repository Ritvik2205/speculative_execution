.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 71
movzx ecx, al
adc cl, dil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 53
and rdx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rax
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], 26
add al, -54 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 96
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 100
xor bl, 5
cmovl rax, rax
adc cl, al
setnb dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
