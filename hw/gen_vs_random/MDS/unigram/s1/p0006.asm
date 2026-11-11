.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -7
btc rbx, rdi
btr rdx, rdx
or dx, 59
and ax, di
and bl, -34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rsi
and cl, -115 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
bts di, si
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -77
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
and dl, 124 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
cmovo bx, bx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 68
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
