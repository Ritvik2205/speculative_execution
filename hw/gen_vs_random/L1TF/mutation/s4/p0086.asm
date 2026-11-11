.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -111
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
add cl, -23 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdi]
setbe dl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -77
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 7
jmp .bb_0.1
.bb_0.1:
setp sil
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dil
cmovno ax, ax
xchg di, ax
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], -70
sub cl, 32
xor cl, cl
xchg dx, si
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
sbb ax, -26133
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
