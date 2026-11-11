.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
lea dx, qword ptr [rsi]
xor bl, cl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 65
add dil, bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rax], eax
jmp .bb_0.2
.bb_0.2:
xor al, 16
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
sbb al, dil
sub rax, -15
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
