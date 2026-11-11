.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dl
or al, al
or di, 0b1000000000000000 # instrumentation
bsf di, di
xor cl, 55
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
btr eax, eax
and rbx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rdi], eax
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], cl
or dl, 85
test ecx, -1843375753
and rdi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
cmovnl cx, si
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
cmovz rdx, rbx
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
