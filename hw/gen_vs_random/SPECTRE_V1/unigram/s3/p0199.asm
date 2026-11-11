.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 92
bt rax, rcx
bts rdx, 64
cmovo ebx, ebx
bts eax, edx
mul dil
add dl, -105 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 55
lea di, qword ptr [rsi + rax + 73]
js .bb_0.1
jmp .exit_0
.bb_0.1:
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, esi
cmovnp dx, ax
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
lea rax, qword ptr [rsi + rbx + 81]
and rdx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
