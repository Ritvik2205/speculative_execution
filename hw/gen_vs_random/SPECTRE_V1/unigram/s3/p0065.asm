.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 75
inc cl
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rax
add al, 73 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 74
bt cx, dx
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], ecx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
movsx si, al
lea ecx, qword ptr [rbx]
sub dl, cl
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 18
sbb al, al
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rcx
add dl, 63 # instrumentation
cmovl dx, si
add dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
