.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rdi]
test ax, -13885
test ax, -13885
sub dx, -23
adc ebx, 22
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp ecx, esi
setnb dil
and eax, 933895314
add dil, -121 # instrumentation
setno dil
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
add bl, -76 # instrumentation
cmovnle cx, ax
and rdi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdi]
add al, 19 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 47
sets bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
