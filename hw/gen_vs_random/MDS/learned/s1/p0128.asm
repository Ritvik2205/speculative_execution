.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc bx, cx
and al, al
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
cmovz rax, rbx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
or cx, 39
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
or si, 94
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
xor ecx, 8
or cl, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
