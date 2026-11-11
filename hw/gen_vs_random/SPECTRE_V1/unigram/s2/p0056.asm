.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -751147448
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rcx], cx
setle al
xchg bl, sil
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 45
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
movsx rsi, cl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
lea rbx, qword ptr [rdx + rbx + 40]
add al, 112 # instrumentation
setl cl
add dl, 24
test dil, cl
add al, -54 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 45
cwde
cmovno ecx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
