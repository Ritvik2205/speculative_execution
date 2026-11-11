.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 51
sub al, 26
or eax, edi
jmp .bb_0.1
.bb_0.1:
cmovnbe eax, ecx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
xor rcx, rsi
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
