.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdx]
inc al
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
lea di, qword ptr [rcx + rdi + 1965]
add dl, 47
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
mov al, dil
add al, -109
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
