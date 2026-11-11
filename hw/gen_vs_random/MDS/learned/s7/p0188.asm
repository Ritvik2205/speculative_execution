.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
or al, -61
and si, -121
or sil, cl
or dl, -97
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and al, 82
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
