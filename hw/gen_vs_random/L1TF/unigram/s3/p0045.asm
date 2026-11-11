.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 35
add al, -117 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], ecx
cmovz rdx, rdi
and rdx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 78
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
or al, sil
add al, -37 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rcx
cmovb di, dx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -25
and rdi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rdi]
add cl, -73 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
and dl, dil
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
