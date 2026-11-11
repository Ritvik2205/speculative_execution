.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
lea bx, qword ptr [rax + rbx + 11]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 103
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
setbe al
lea rbx, qword ptr [rsi + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
xor si, 34
xor rbx, -34
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
imul esi, esi, -106
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
sub cl, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
