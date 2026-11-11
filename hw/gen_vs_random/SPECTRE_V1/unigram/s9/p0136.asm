.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add si, 46
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ecx
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
lea si, qword ptr [rdx + rax]
movzx cx, al
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rax]
sub cl, dl
add cl, -18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 80
add al, -117 # instrumentation
not rax
and rcx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rcx]
or dx, dx
bswap ecx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
