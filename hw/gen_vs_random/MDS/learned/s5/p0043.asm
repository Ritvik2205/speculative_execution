.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
xor rsi, -117
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
xor al, -19
or cl, 119
and dil, -62
test sil, cl
test cl, sil
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
not sil
or al, -24
or al, cl
or al, 16
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
