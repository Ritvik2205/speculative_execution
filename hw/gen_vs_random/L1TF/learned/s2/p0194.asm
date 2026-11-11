.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
lea rdx, qword ptr [rax + rbx]
sbb bl, -62
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
lea rdx, qword ptr [rbx]
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 12
not rdi
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], edx
or dl, 73
and eax, -1143711697
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 38
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
adc bl, 44
cmovnb rsi, rdi
or di, 0b1000000000000000 # instrumentation
bsf si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
