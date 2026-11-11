.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -93 # instrumentation
cmovb rdx, rsi
btc esi, edi
inc dil
or rsi, 51
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
add bl, 104 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -5
add rbx, 99
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
cmovz rbx, rcx
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
setnz al
and rcx, 40
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
