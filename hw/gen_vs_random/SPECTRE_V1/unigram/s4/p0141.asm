.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl eax, esi
not sil
cmovbe cx, ax
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -75
adc cl, -81
lea esi, qword ptr [rsi + rbx]
mov sil, cl
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
xchg cl, al
jb .bb_0.1
jmp .exit_0
.bb_0.1:
xor rbx, 50
lea rdx, qword ptr [rax]
xchg eax, ebx
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
bts si, cx
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
