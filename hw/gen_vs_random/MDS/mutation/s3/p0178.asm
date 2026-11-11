.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
bts rdi, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rbx]
cmovnp eax, esi
bts ebx, edx
and rsi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdi
and cl, 51 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
xor bl, cl
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
cmovz rdx, rdx
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rcx]
and cx, bx
bt edx, edi
or al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
