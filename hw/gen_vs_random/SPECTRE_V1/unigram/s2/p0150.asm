.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
cmp cl, cl
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 67
jl .bb_0.1
jmp .exit_0
.bb_0.1:
or bl, al
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
cmp rdx, -19
lea ax, qword ptr [rsi + rcx]
add dl, 71 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdx]
sbb dx, 49
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 90
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
