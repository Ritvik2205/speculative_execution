.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 31
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 13
and bl, bl
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rcx], ax
add sil, cl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
setno al
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], eax
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 11407425
sub rsi, 121
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 32
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
add dl, -124 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 79
setbe cl
and rsi, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
