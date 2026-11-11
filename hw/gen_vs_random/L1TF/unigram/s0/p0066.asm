.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdx]
mov al, al
and rax, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rax]
add bl, 62 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
cmovs ax, cx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 48
add al, -34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rax]
or rdx, 1 # instrumentation
add al, -82 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rcx]
add dl, -57 # instrumentation
setz al
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
and dx, word ptr [r14 + rax] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 23
cdq
add bl, 113 # instrumentation
setbe sil
cdq
bts edx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
