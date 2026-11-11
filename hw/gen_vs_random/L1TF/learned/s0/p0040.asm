.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov dl, cl
or edi, 12
lea rdi, qword ptr [rcx]
mov dl, dil
xor bl, al
cmp al, dl
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
dec bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
