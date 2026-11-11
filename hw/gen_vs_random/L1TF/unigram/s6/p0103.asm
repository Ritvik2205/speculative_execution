.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rbx], dx
sub rdx, rax
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
lea rax, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx], 8
sbb dl, dl
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 17
movsx ecx, dil
cmovb di, bx
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rbx
xor esi, 59
and rcx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rcx]
lea si, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
