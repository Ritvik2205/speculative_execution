.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
bts eax, esi
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
and dl, 10
adc dil, dl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 13
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
add sil, -61
cmp bx, -21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
