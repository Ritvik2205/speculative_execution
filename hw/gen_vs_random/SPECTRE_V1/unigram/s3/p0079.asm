.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -5 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rdx]
add al, 34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
xchg edi, edx
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], 117
cmovs di, si
cmovp dx, di
and rbx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rbx]
add al, -26 # instrumentation
cmovle rdx, rax
add dl, -68 # instrumentation
add dl, 54 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rbx]
lea rbx, qword ptr [rsi + rbx + 59]
add al, 10 # instrumentation
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], ebx
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdx]
sub dl, dil
add edi, -91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
