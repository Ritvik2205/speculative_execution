.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
sbb al, sil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
xor cl, 89
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ecx
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
sub sil, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
