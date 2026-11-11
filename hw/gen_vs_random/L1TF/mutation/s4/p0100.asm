.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -65
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 6
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 43
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 14
test dl, bl
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rax], di
or rax, 1447934463
jmp .bb_0.1
.bb_0.1:
cmovnbe ax, cx
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
xor al, cl
btc cx, 31
sbb cl, cl
xor cx, -79
add cl, 34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
