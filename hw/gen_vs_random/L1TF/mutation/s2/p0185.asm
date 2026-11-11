.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
add cl, -23 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 7
setbe dl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -77
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -111
jmp .bb_0.1
.bb_0.1:
cmovno ax, ax
xchg di, ax
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dil
xchg dx, si
sbb ax, 67
sub cl, 32
setp sil
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], -99
xor cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
