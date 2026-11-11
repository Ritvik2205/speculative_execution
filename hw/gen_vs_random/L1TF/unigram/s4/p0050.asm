.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
xor eax, edx
xor dx, 36
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
mov al, -26
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
and bl, bl
not edx
add bl, -117 # instrumentation
lea rax, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 6
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 84
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rax
setl cl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
mul bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
