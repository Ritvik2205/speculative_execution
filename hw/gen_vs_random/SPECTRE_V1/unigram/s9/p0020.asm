.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg edx
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rsi]
inc rdi
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 24
test al, 40
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
or si, 0b1000000000000000 # instrumentation
bsf dx, si
jrcxz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], dil
setb al
bts rax, rcx
and rdx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
