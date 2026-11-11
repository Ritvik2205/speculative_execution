.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdx]
setle al
add dx, -51
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
mov al, dil
setle bl
add ecx, ebx
and rbx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 53
and rsi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
lea rbx, qword ptr [rbx + rax]
setnl dil
add cl, 102 # instrumentation
sbb cx, ax
mul bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
