.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], eax
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], edi
add dil, 27
add dl, 63 # instrumentation
cmovle dx, ax
add bl, -41 # instrumentation
xchg sil, bl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
cmovp esi, ecx
lea edx, qword ptr [rdi + rsi + 61]
cmovle rax, rbx
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], 3
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
