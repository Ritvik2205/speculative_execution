.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
test al, bl
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
and dx, 60
or cl, sil
and eax, 366961170
test al, dil
and al, -114
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
or al, -24
and sil, dil
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
