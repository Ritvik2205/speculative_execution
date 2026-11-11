.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
imul dl
add cl, -127
xor bl, bl
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
not al
js .bb_0.2
jmp .exit_0
.bb_0.2:
add dx, ax
lea rsi, qword ptr [rdx + rsi + 39]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], sil
sub bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
