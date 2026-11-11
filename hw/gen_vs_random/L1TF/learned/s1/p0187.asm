.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rsi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
test dl, cl
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 0
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
and rax, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 99
jmp .bb_0.1
.bb_0.1:
and cl, 85 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 61
setle dil
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 7
bt rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
