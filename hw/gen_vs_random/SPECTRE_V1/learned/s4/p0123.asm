.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 59
sub bl, cl
lea di, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
mov dil, bl
and dl, -111
jns .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bl, bl
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], -49
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 7
neg rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
