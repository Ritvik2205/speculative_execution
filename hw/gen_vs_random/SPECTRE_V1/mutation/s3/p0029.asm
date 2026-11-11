.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 6 # instrumentation
adc rax, -384715932
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
sub eax, -518999763
adc rdx, 35
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rax]
bt dx, ax
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
adc rdi, -75
and rdx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdx]
adc cl, -18
lea di, qword ptr [rsi + rbx]
dec bl
cmp rdi, rdx
imul bl
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
add bl, al
lea esi, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
