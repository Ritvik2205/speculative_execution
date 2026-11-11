.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub edx, -63
sub dil, -111
or eax, 848176907
add bl, 4 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
sbb bl, bl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdi]
add dl, -34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdx]
sets dil
add eax, -1174744897
lea di, qword ptr [rcx + rdi + 1965]
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
