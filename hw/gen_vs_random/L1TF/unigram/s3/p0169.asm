.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg rsi
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], ecx
mul dx
bts rsi, 57
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 15
add rbx, rdx
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], al
cmp bl, 31
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rdi + rdi + 8878]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], -105
setp dl
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
