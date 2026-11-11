.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 30996
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 52
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
test cl, bl
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rbx + rcx + 12]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], -6
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 60
sub al, dl
lea ax, qword ptr [rdx + rcx]
cmp dl, -56
cmp al, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
