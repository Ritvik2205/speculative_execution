.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
sbb dl, cl
xchg ecx, eax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
adc al, dil
mul rax
test al, 56
cmovnbe di, di
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], esi
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
lea rax, qword ptr [rdi + rdi + 9]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
