.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -35
and di, 91
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
test ecx, -1843375753
or al, -78
xor dl, bl
test bl, al
test edx, -372470678
or rcx, -17
test rax, 1214712583
xor dl, al
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
