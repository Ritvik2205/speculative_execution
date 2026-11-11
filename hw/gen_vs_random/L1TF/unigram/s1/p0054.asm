.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -21 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], cx
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 85
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], ax
sbb rdi, 35
sbb di, 80
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rsi
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 4
and rax, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rsi]
xor rcx, 47
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
bt rax, 95
and rdx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdx]
cmovb di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
