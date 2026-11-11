.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov rdi, rdx
add dl, 78 # instrumentation
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], si
xor dil, dil
add al, -117 # instrumentation
setp bl
lea si, qword ptr [rsi + rdx + 44163]
add cl, -41 # instrumentation
adc ax, cx
add dl, -108 # instrumentation
cmovnle edi, edi
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 109
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 49
xchg esi, edx
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and bl, 89
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
and rcx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
