.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -95 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
bts eax, 232
or al, -57
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
test dx, 14
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
test ebx, 93
xchg rdi, rsi
mov al, sil
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
