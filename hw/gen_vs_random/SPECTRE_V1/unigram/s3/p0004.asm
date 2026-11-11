.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, bx
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 86
imul rdx
movzx di, dil
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 20
btr rdx, rbx
add cl, 73 # instrumentation
add cl, -10 # instrumentation
lea eax, qword ptr [rsi]
btr ebx, 58
xor cl, 78
cmp cl, sil
sets cl
sbb cl, dl
add bl, -76 # instrumentation
cmovnle si, di
add bl, -12 # instrumentation
lea rbx, qword ptr [rsi + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
