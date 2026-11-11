.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 90
test bl, -92
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 36
and al, -68
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
add dl, -56 # instrumentation
cmovs rcx, rbx
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
lea dx, qword ptr [rsi + rdx + 50]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
