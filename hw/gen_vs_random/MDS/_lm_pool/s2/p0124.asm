.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 8
or dl, al
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
test al, 127
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
bt eax, esi
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 0
or al, 30
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
test al, 22
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
xor rax, -773894210
test bl, -14
test cl, -86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
