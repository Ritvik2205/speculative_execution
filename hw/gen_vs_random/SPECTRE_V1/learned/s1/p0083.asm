.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 21 # instrumentation
adc cx, 58
and dl, bl
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
sub cl, al
sbb cl, 105
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
lea cx, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 63
add sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
