.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lfence
lock and dword ptr [r14 + rdx], 14 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rdi], -65 
lfence
test dl, bl 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
xor rdx, qword ptr [r14 + rsi] 
lfence
or di, 0b1000 # instrumentation
lfence
and dil, 0b11111000 # instrumentation
lfence
and dx, 0b11 # instrumentation
lfence
idiv di 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
and di, 0b111 # instrumentation
lfence
lock btr word ptr [r14 + rax], di 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
or byte ptr [r14 + rbx], 43 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
or qword ptr [r14 + rax], 6 
lfence
or rax, 1447934463 
lfence
jmp .bb_0.1 
.bb_0.1:
xor al, cl 
lfence
xor cx, -79 
lfence
btc cx, 54 
lfence
cmovnbe ax, cx 
lfence
or rcx, 1 # instrumentation
lfence
and rdx, rcx # instrumentation
lfence
shr rdx, 1 # instrumentation
lfence
div rcx 
lfence
add cl, 34 # instrumentation
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
adc qword ptr [r14 + rcx], 125 
lfence
sbb cl, cl 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
