.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdi], esi
sub sil, al
bts ax, 201
mov sil, cl
and dl, dl
lea rbx, qword ptr [rdi]
and eax, -409673666
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
