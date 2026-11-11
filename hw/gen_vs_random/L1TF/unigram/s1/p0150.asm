.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdx]
or al, -5
add bl, 68
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 16
adc ecx, ecx
sbb edx, 23
and dl, 10
movzx eax, ax
cmovo rbx, rdi
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 94
add al, -34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rcx]
setns bl
add bl, -93 # instrumentation
cmovb rdx, rbx
lea eax, qword ptr [rbx + rax + 97]
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], 42
neg esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
