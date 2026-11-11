.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
inc dil
and rsi, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rsi]
or ebx, 75
and rbx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
sub cx, 100
sbb cx, 99
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
inc rax
test rdx, rcx
add al, -34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
