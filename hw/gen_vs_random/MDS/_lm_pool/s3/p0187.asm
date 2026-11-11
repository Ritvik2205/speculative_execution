.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdx]
or sil, bl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
or al, -78
xor al, 8
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rax
test al, cl
or dl, -97
or bl, bl
and di, 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
