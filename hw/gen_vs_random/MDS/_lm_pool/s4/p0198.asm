.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
xor sil, -14
xor sil, cl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
and al, 35
and rax, 41
and ax, -10351
or dl, bl
xor dl, bl
and al, dl
and ax, -16061
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
xor al, 122
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
