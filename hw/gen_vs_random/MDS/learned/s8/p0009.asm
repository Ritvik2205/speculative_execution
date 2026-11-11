.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
xor dil, 81
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and al, 82
test cl, 0
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
btr bx, dx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
test al, dl
or sil, cl
jmp .bb_0.2
.bb_0.2:
test edx, -1561252782
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
