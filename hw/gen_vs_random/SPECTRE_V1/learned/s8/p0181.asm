.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
add al, -72
test bl, -8
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
sub dil, -32
test dil, dl
lea rax, qword ptr [rdx]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -26
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
