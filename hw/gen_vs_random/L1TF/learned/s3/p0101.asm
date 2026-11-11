.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
sbb bl, 120
lea si, qword ptr [rsi + rsi + 59]
setp sil
lea eax, qword ptr [rdx + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rbx
and dil, dil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rbx
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], si
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 77
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 77
sub cl, sil
lea di, qword ptr [rbx]
adc al, cl
or rbx, 86
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 25
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
