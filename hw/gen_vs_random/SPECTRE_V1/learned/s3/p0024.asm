.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov sil, dl
mov bl, al
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 22
dec bl
mov al, cl
sbb ebx, 66
jp .bb_0.1
jmp .exit_0
.bb_0.1:
or eax, -1641258390
add dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
