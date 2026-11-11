.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnz cl
add eax, -371144449
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], edx
mov al, sil
mov cl, dl
lea ax, qword ptr [rcx + rdi + 34958]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
sub bl, cl
cmovb edx, edi
setb dil
cmovnbe si, di
xor dx, -128
bts rdx, 212
movzx edi, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
