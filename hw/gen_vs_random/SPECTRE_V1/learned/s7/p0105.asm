.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 69
adc dl, bl
sbb al, 66
or eax, 848176907
xor bl, cl
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
or si, 0b1000000000000000 # instrumentation
bsf dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
