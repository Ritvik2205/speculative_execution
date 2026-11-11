.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, sil
mov cl, dl
setnz cl
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], edx
lea ax, qword ptr [rcx + rdi + 34958]
add eax, 1938514106
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
cmovb edx, edi
xor dx, -128
setb dil
and rdi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdi]
movzx edi, cl
cmovnbe si, di
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
bts rdx, 212
sub bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
