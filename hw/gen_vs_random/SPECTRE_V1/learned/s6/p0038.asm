.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
and al, -54
test bl, -8
mov al, dl
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
setno sil
js .bb_0.2
jmp .exit_0
.bb_0.2:
add dil, 72
mov sil, bl
and bl, dil
add cl, al
setz sil
xor ax, 913
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
cmp dl, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
