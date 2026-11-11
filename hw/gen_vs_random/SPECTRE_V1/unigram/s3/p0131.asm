.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx ax, dl
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
sbb dl, 127
lea ebx, qword ptr [rbx + rdi]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rdx
sub dl, bl
add dl, -86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 95
imul dx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
test al, 42
inc bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
