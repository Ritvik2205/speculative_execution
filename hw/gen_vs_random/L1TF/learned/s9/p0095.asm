.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, cl
adc al, 80
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmovl rdx, rdx
or cl, 105
and rbx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
or dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
