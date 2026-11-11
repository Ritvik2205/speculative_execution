.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp eax, esi
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdi
and rsi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rbx]
bts rdi, rcx
bts ebx, edx
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
and cl, 51 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
bt edx, edi
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
or al, sil
and rcx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdi]
and cx, bx
cmovz rdx, rdx
xor bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
