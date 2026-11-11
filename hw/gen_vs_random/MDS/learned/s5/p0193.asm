.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dil
xor cl, 24
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 18
bts rsi, 205
or cl, 39
or dl, bl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
and sil, 74
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
xor rdi, -9
and sil, -69
and cx, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
