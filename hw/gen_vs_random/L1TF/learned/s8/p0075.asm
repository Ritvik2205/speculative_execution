.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], ebx
test eax, 645518295
or al, -5
xor cl, 89
jmp .bb_0.1
.bb_0.1:
test dl, -37
lea ebx, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
jmp .bb_0.2
.bb_0.2:
lea rdx, qword ptr [rcx + rsi + 46]
jl .bb_0.3
jmp .exit_0
.bb_0.3:
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
or al, -5
sbb dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
