.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cx, si
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
mov cl, dil
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
sbb dil, 62
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], cx
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], bl
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 8
js .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rbx]
sbb rcx, 28
lea di, qword ptr [rdi + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rsi]
test al, dil
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
xchg ebx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
