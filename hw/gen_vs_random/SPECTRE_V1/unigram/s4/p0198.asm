.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edx, eax
lea cx, qword ptr [rbx + rbx + 96]
add al, -121 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rax]
setnl cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
adc al, 51
lea rdx, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 3
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], 74
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 69
adc cl, -18
or dl, 1 # instrumentation
add dl, -47 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], dx
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
