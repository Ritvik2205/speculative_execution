.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 30
xor ax, -23364
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
or al, dil
xor rsi, -117
jmp .bb_0.1
.bb_0.1:
cmovnp rsi, rax
jmp .bb_0.2
.bb_0.2:
or al, bl
or al, 37
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -65
and al, -55
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
