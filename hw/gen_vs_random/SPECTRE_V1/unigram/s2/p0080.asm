.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ecx, 13
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 46
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
setns dil
bts rdi, 31
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rsi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, 10
lea rbx, qword ptr [rsi + rdi + 51]
mov al, dl
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
cmovle rdi, rdx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rsi
lea rcx, qword ptr [rax + rsi + 51]
btc cx, 31
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
