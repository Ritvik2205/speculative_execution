.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
bts rax, rdi
test al, sil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
or al, 54
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
or cl, 30
bt ax, cx
xor bl, 67
test eax, 1287331633
and ax, 5001
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
