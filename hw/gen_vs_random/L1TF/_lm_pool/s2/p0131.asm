.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dl
sub cl, 86
sub al, -97
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
bt edi, edx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
lea rsi, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 12
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
sub cl, dil
or dl, al
xor dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
