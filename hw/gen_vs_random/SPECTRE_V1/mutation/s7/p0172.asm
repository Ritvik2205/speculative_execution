.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], edx
setnz cl
lea ax, qword ptr [rcx + rdi + 34958]
mov cl, dl
mov al, sil
add eax, -1174744897
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xor dx, -128
cmovnbe si, di
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
movzx edi, cl
and rdi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdi]
cmovb edx, edi
sub bl, cl
setb dil
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
bts rdx, 212
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
