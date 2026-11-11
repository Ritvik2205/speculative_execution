.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rax
cmovnle rsi, rcx
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
sbb bl, 79
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
add cl, bl
and bl, -43
mov al, cl
add al, 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
