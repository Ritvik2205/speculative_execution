.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 27239
mov cx, -22668
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
adc dl, 96
add cl, dl
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
test al, 52
mov al, 124
movsx ax, dl
sbb cl, bl
xor ax, 15671
add sil, sil
test ecx, 860867711
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
