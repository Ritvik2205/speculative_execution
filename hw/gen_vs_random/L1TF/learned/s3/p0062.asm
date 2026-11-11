.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax]
test al, -32
lea rdx, qword ptr [rax + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
sub al, cl
xor cl, bl
xor bl, cl
jmp .bb_0.1
.bb_0.1:
cmovno di, bx
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
lea di, qword ptr [rdx + rax + 82]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
