.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec al
mov rsi, rdi
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
add bl, 36 # instrumentation
setnl al
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rax
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
cmovo esi, edx
sub sil, -55
add dil, 28 # instrumentation
setnz dil
sub al, dil
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
cbw
lea esi, qword ptr [rbx]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add bl, 26
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], edi
sub rbx, -128
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
