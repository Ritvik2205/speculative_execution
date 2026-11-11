.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, sil
and ax, 21910
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
test al, 42
lea edx, qword ptr [rdi]
and dl, bl
cmp al, 62
add al, -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
