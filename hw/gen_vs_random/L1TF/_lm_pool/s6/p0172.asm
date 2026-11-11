.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
setno dl
add dl, cl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
lea rbx, qword ptr [rdi + rdx]
xor dl, sil
test al, 15
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdx, qword ptr [rdi]
test bl, 12
and rcx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
