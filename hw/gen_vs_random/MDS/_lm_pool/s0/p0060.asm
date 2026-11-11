.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, cl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 22
or dl, -31
xor rsi, -117
or sil, -78
and al, 87
or al, -78
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
jmp .bb_0.1
.bb_0.1:
test al, 91
bt cx, ax
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test cl, dil
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and ax, 19740
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
