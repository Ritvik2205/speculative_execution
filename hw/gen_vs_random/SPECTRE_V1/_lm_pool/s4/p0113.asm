.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
sub al, -82
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and dl, cl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
cmp esi, 20
xchg dl, al
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
cmovs ax, bx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
