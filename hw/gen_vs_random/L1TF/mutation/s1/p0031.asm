.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, -263404965
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 6
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 14
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], -55
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rax], di
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -65
test dl, bl
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
jmp .bb_0.1
.bb_0.1:
xor al, cl
add cl, 34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 125
xor cx, -79
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
cmovnbe ax, cx
btc cx, 54
sbb cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
