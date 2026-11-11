.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
cmovnb rax, rcx
or dl, al
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
cmovl edi, esi
adc sil, 61
xchg ebx, ecx
cmovnz eax, ebx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
lea eax, qword ptr [rdx]
jmp .bb_0.2
.bb_0.2:
jp .bb_0.3
jmp .exit_0
.bb_0.3:
cmp cl, bl
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
