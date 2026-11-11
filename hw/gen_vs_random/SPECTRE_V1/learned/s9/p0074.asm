.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx esi, dx
sub al, cl
mov dil, cl
lea rbx, qword ptr [rdx + rdi + 23]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
sub dil, -111
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx], 22
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
