.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 29
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
xor rax, -2072052278
xor dl, bl
and rbx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rbx]
or al, -57
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
and rcx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
