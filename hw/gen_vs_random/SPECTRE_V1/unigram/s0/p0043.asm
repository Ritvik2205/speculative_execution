.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg bl
cmp dil, -78
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rax
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], -16
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
or di, -85
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 56
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], sil
inc rbx
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
jo .bb_0.1
jmp .exit_0
.bb_0.1:
setle dl
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edi
and rdx, -98
lea eax, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
