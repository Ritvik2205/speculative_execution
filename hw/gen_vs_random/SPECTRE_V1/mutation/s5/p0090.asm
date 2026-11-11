.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnz cl
add eax, -1174744897
mov cl, dl
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], edx
mov al, sil
lea ax, qword ptr [rcx + rdi + 34958]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovb edx, edi
setb dil
and rdi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdi]
movzx edi, cl
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
xor dx, -128
sub bl, cl
bts rdx, 212
cmovnbe si, di
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
