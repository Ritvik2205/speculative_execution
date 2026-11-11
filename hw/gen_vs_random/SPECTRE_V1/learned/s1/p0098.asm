.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
test ecx, -1134698714
and rbx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rbx]
cmovnbe rbx, rsi
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -34
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
lea dx, qword ptr [rsi + rbx + 60147]
cmovle rcx, rbx
lea di, qword ptr [rdx + rbx]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], ax
or dl, 1 # instrumentation
add dil, -47 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdi]
or dl, cl
xor rsi, 73
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -94
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
