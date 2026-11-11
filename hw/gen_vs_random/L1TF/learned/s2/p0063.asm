.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 12 # instrumentation
cmovnb eax, edx
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rsi]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
test eax, 899472326
test rdx, rsi
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
add dl, al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
test di, 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
