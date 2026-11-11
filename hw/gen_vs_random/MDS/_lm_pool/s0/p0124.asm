.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rdi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdi]
and rbx, 65
xor bl, 67
and rdi, 82
btr di, ax
or sil, bl
jmp .bb_0.1
.bb_0.1:
and ax, bx
and rdx, 18
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 26
test dl, -119
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
test al, 127
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
