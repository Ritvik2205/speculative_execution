.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
sub al, 9
lea rdi, qword ptr [rbx + rdx + 33]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
xor dil, dl
lea di, qword ptr [rdx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 75
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
