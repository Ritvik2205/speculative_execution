.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setle cl
mov rdi, 57
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
cmp sil, dl
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], bx
bt ecx, 198
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 59
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rcx, rdx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdx]
adc bl, cl
cmp dl, al
xchg rsi, rbx
lea rsi, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
