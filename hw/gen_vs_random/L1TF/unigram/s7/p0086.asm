.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ecx, 47
test ebx, ebx
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
or di, 0b1000000000000000 # instrumentation
bsf dx, di
adc cl, cl
sbb dil, sil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 69
and al, al
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 64
test dl, dl
sub sil, bl
and rdx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdx]
test ebx, eax
xor sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
