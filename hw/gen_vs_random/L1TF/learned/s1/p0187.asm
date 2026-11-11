.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
cmp dl, sil
test bl, -92
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
and al, cl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rax]
inc edx
sub al, sil
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 58
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
