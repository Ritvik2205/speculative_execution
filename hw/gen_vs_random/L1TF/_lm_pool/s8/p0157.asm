.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
and rdi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdi]
lea esi, qword ptr [rdi + rdi + 73]
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
lea dx, qword ptr [rax]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], sil
jmp .bb_0.1
.bb_0.1:
sbb sil, dl
jmp .bb_0.2
.bb_0.2:
test eax, 899472326
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
