.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
lea rdx, qword ptr [rdi + rsi + 42]
test eax, 645518295
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], cl
and cl, dl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 67
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and bl, cl
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
