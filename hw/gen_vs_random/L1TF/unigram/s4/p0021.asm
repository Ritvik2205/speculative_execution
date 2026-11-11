.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 43
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], ax
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -79
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
add dl, 43 # instrumentation
lea rbx, qword ptr [rax + rsi]
xor dl, dil
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
setp bl
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
add cl, -84 # instrumentation
xchg rcx, rbx
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
add rbx, rcx
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
