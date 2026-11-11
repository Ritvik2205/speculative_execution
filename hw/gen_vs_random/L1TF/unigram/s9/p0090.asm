.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul esi
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
sbb rcx, 58
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 124
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rsi]
or dx, si
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -40
add al, -21 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
cmovnle rax, rax
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
