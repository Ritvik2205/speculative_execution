.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
bts rax, 77
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
xor ax, -4010
or dl, cl
bts rbx, rax
xor cl, 55
not sil
or al, -61
and bl, sil
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
or al, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
