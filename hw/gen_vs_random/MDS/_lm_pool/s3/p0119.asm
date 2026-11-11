.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -114
btc eax, 40
test sil, al
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
test ecx, -1843375753
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
bts rcx, 93
or al, dl
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
or rdx, -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
