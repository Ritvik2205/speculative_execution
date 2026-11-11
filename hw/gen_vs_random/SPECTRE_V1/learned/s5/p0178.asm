.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
and dl, -92
lea rax, qword ptr [rbx + rdi + 63]
test rax, -1638758413
xor cl, cl
jmp .bb_0.1
.bb_0.1:
test al, 42
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
mov bl, al
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
or eax, -126
cmp al, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
