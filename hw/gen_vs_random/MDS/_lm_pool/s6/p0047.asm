.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
xor dl, cl
or sil, bl
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
btr cx, si
jmp .bb_0.1
.bb_0.1:
or ebx, eax
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
not dil
xor ebx, 90
xor dl, 34
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
