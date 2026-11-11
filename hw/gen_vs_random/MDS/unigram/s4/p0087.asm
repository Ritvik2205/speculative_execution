.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb rsi, rbx
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], cx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 33
cmovz rsi, rbx
bt rdi, 36
and dl, -73
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
cmovs ecx, edx
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdx]
or dl, 85
cmovnb rbx, rsi
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 55
and di, 91
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ecx
and rsi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
