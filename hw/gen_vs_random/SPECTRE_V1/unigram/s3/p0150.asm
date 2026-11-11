.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 55
or cx, 37
setno sil
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
movsx bx, cl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
adc sil, sil
not dl
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], dx
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edi
adc cl, -18
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
