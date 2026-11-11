.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rcx + rdi + 34958]
mov al, sil
setnz cl
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], edx
add eax, 1938514106
mov cl, dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
movzx edi, cl
xor dx, -128
cmovb edx, edi
setb dil
bts rdx, 212
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
sub bl, cl
cmovnbe si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
