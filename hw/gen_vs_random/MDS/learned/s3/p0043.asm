.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -1 # instrumentation
cmovnb cx, di
cmovb rdx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
or cl, al
imul bx, di
xor sil, dl
and dl, -3 # instrumentation
cmovnb dx, bx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
movzx rax, bl
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
sub al, dl
and bx, cx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -41
adc dx, dx
and bx, ax
and bx, -21
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
