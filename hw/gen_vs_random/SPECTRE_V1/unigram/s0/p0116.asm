.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
mul sil
adc rax, 1310333622
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], cl
cmovns rax, rbx
lea si, qword ptr [rsi]
lea rdi, qword ptr [rbx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
test ax, 19339
or dl, 41
and rdx, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dil
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
lea ebx, qword ptr [rbx]
imul cl
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
test cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
