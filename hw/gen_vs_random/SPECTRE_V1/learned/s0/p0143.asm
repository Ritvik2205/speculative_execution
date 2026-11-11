.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 46
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, -89
test sil, bl
jno .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test bl, -8
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
xor al, bl
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
cmp al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
