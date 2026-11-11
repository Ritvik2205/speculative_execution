.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 30
test sil, 41
and al, 49
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
test sil, bl
or bl, 127
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
xor bl, -27
and bl, bl
or sil, cl
btc edi, 230
xor rdi, -9
test rax, -2004802425
and rax, 452940266
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
xor al, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
