.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
mul di
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rax
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], cx
cmovnl ecx, eax
lea rbx, qword ptr [rcx]
sub edx, 48
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 89
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], eax
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 54
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rax]
test rdi, 1238697264
sub cx, bx
and rdx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
