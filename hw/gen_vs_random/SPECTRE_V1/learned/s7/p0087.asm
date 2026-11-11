.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, cl
cmp dl, dil
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
add bl, 70
mov bl, cl
cmp dl, 71
sub al, dl
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
lea rdi, qword ptr [rax + rdx + 53]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
lea si, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
