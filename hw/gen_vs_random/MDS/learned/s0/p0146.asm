.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -78
or dl, dil
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
and al, al
jmp .bb_0.1
.bb_0.1:
or dl, 51
xor sil, -14
and ax, -12519
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
test rbx, 89
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
bt ax, bx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
test sil, bl
or rax, 1020005579
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
