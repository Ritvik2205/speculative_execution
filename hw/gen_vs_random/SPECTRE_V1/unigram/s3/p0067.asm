.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], cx
add al, -121 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
sub di, cx
imul bl
xchg si, dx
mul cl
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea dx, qword ptr [rax]
test edx, 1380346728
setns dl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], al
xor eax, -764881786
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], 56
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdi
adc bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
