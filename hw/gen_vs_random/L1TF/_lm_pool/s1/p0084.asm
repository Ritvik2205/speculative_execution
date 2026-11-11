.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movzx rdx, byte ptr [r14 + rsi]
lea esi, qword ptr [rax + rax + 83]
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
sbb dil, al
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 60
test rax, rdx
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 23
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test cl, 95
setno al
and al, -68
jmp .bb_0.3
.bb_0.3:
add cl, 89 # instrumentation
adc sil, dil
add cl, cl
cmp al, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
