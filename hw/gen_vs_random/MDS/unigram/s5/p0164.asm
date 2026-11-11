.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rsi]
bt rcx, rcx
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 79
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rax]
and bl, 45 # instrumentation
cmovnb ax, si
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
btr rdi, rcx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
cmovno rbx, rcx
not dl
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -45
and rbx, 65
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], di
cmovb rax, rsi
or rsi, 33
and dl, dil
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
or si, -12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
