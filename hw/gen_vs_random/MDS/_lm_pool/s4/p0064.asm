.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
btr bx, cx
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 79
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
xor dl, -19
test sil, -96
xor rax, -1499464454
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and cl, cl
xor ax, -12492
jmp .bb_0.1
.bb_0.1:
bts rdx, 200
jmp .bb_0.2
.bb_0.2:
and bx, 48
bts rsi, 221
or al, bl
and dl, al
and al, -54
test rdx, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
