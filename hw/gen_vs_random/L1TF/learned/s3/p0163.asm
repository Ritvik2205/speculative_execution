.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
or al, dl
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
jmp .bb_0.1
.bb_0.1:
sbb cl, bl
jmp .bb_0.2
.bb_0.2:
bswap rdx
xor bl, sil
sub cl, bl
cmovnz ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
