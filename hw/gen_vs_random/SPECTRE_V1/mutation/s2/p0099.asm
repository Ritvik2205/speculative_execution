.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub eax, -518999763
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
adc rdx, 35
bt dx, ax
and rax, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
add dl, 6 # instrumentation
adc rax, -384715932
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 5
add al, -106
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
cmovnl eax, ebx
and rax, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rax]
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
lea si, qword ptr [rsi + rdx]
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
add al, 90 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
