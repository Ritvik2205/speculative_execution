.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
mov al, -101
and rbx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rbx
jmp .bb_0.1
.bb_0.1:
test cl, 11
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
lea rcx, qword ptr [rdi]
add cl, cl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
and rdx, qword ptr [r14 + rcx] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdx]
xor ecx, 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
