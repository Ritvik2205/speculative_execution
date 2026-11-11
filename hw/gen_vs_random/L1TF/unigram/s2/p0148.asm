.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], sil
and rdi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdi]
mov bx, 21854
jmp .bb_0.1
.bb_0.1:
inc bl
btr esi, eax
add cl, al
add dl, -83 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
lea si, qword ptr [rdx + rbx + 13]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rdx]
add dl, 78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
