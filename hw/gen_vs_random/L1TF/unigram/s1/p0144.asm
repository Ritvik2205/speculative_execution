.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], rdx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 97
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rbx], cx
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
cmovnle ebx, eax
sbb dil, cl
xchg dil, al
or bl, 61
add si, 87
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 51
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
add bl, -61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
