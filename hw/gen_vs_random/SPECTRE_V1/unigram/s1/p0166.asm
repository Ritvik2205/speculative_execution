.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc edx, 10
xor dl, dil
add al, 96 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], di
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rdi]
lea dx, qword ptr [rax + rax + 72]
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and rdi, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdi]
xchg dx, ax
sbb rbx, 18
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
and rdi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], ecx
add cl, 42 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
