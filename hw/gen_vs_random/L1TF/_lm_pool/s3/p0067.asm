.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
and dil, dil
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
lea eax, qword ptr [rdi]
and dl, sil
add cl, -20
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add si, -5
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
add dil, dl
add al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
