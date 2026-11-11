.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
lea cx, qword ptr [rdx + rdi]
cmovnb rdi, rsi
cmp rsi, 53
sbb al, 66
cmovle dx, di
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
sub dil, al
jns .bb_0.1
jmp .exit_0
.bb_0.1:
xor dx, -128
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
sub bl, cl
and rdi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdi]
setb dil
movzx edi, cl
cmovb edx, edi
bts rdx, 212
cmovnbe si, di
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
