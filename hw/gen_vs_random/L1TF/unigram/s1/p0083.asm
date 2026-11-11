.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rdx
lea rcx, qword ptr [rdi + rcx]
xor dl, bl
lea cx, qword ptr [rdx + rbx]
btc ecx, ecx
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rcx
xor dil, cl
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
xor bx, 25
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], dx
add al, 56
not dl
cmp rdx, 20
sbb bx, 60
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
and ebx, 20
cmovnp bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
