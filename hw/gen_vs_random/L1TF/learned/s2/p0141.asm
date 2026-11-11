.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ecx
sbb dl, dl
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], -29
adc rax, -1877286258
lea ecx, qword ptr [rcx]
lea ax, qword ptr [rsi + rcx + 40317]
and rax, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rax]
bt di, di
add al, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
bts dx, 10
lea si, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -93
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 73
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
