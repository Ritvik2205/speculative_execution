.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 35 # instrumentation
cmovnz rbx, rdi
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
sbb dl, -23
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4
cmovb eax, eax
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 1
and rbx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 1
dec rdx
cbw
and rdi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
