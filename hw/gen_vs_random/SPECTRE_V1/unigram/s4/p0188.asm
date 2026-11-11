.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
lea di, qword ptr [rax + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], 89
test al, 70
cmovl eax, edi
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rdx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
xor rax, 1636804787
lea rdi, qword ptr [rcx + rsi + 6]
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
lea rcx, qword ptr [rbx + rax]
adc rdx, 35
and rdi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdi]
sub rsi, 121
xchg cx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
