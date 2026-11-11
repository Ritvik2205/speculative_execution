.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rcx, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rcx]
adc si, -95
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
sbb cl, -122
xor bx, ax
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], ebx
add bl, -52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
adc dil, 58
movsx rbx, di
lea bx, qword ptr [rax + rsi]
add al, -123 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
xchg dil, dil
sub edx, eax
test cl, -31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
