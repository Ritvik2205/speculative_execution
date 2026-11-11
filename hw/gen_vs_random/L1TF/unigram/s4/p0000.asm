.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
add bl, 81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
cmovp edx, ebx
add dx, -51
add bl, 13 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rcx]
bt ax, 87
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
add al, 51 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
cmovno bx, bx
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rsi
cmp cl, bl
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
lea ebx, qword ptr [rsi]
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
