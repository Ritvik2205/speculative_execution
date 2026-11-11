.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
cmovb cx, si
lea eax, qword ptr [rcx + rcx + 31865]
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], sil
and dl, sil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rax
test eax, -2032743474
xor ax, 22976
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
