.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ecx, 3
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
and ebx, 89
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor al, bl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rsi, 28
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
or dl, 51
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
or al, cl
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
bt cx, ax
and rdx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
