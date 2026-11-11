.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
cmovnb dx, dx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 24
test dl, al
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
mul dil
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
mul cl
and rax, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rax]
setns dil
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
adc ebx, 46
bt rcx, rbx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
