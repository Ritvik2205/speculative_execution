.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -55
or dl, bl
btc si, 99
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
jmp .bb_0.2
.bb_0.2:
or dil, -78
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rax
or sil, -49
or rax, -1561934807
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
xor dl, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
