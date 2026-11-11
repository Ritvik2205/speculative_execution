.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
test rdx, 95
and ax, -122
xor dil, -5
bts rdx, 200
or al, al
or cl, 30
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
jmp .bb_0.1
.bb_0.1:
xor cl, sil
xor cx, -18
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
not dl
and rdx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdx]
test bl, 65
or dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
