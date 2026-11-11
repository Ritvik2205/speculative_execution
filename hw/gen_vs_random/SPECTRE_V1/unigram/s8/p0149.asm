.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 55
lea rbx, qword ptr [rdx + rdx]
inc rdx
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], di
or dl, 41
cmovle cx, bx
lea esi, qword ptr [rbx + rbx + 98]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edx
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rcx
loope .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdx, qword ptr [rax + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
and rcx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
cmovnbe ecx, eax
mul rcx
sub dil, -111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
