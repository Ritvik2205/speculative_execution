.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc cl
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 50
and rdi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdi]
sub sil, -99
or al, -2
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 17
and di, 5
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
cmp al, 27
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and dx, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
