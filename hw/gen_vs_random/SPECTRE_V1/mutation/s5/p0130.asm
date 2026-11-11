.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 1 # instrumentation
add al, -93 # instrumentation
setnb al
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
add al, 34 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rsi]
and bl, sil
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rsi
add dl, -34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rax]
lea edi, qword ptr [rdx + rdx]
bts cx, cx
sub dl, al
cmovle si, si
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
add dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
