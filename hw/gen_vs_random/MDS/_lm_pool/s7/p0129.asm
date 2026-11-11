.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
not sil
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
or dil, sil
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
test al, -7
and bx, 59
xor edx, 17
test sil, 17
xor rdi, -9
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
or al, -61
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 19
xor cl, bl
or cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
