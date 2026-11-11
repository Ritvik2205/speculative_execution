.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
test dil, -83
test al, 57
adc bl, 79
and al, 59
test al, 57
and bl, al
or dl, cl
add al, dil
sub cl, dl
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
xor rax, 93
and si, -74
neg cl
test dx, 28394
cmp dil, cl
cmovle rdx, rcx
mov al, -93
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
or dil, -16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
