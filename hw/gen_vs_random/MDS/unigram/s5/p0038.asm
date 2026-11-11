.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 84
test rcx, rdi
and rcx, -63
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 18
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rbx]
bt rax, rdx
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
or dl, dl
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rbx]
and cl, 126 # instrumentation
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
not cl
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 38
cmovb rdx, rsi
xor si, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
