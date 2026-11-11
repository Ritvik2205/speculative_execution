.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 85
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], si
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
btc eax, 17
or eax, -1161451853
and cl, cl
mov bl, al
sub al, -66
or al, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
