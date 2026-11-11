.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
xor rax, 20
btr dx, si
and rdx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdx]
or bl, sil
lea ax, qword ptr [rax + rdx]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], bl
lea eax, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 23
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
