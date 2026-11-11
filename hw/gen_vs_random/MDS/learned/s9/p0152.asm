.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
or al, 37
test bl, -114
bt ax, bx
xor al, 122
and ax, -10351
test dl, bl
test rax, 1214712583
btr di, cx
xor rcx, 71
and dl, cl
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], ecx
and sil, cl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
