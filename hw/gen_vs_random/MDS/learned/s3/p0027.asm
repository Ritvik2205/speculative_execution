.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
xor al, bl
btc ax, 27
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
or bx, 36
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
not al
test eax, -675944960
or al, 54
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
test rax, -359674714
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and bl, dl
and dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
