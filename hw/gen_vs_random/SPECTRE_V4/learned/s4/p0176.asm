.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
adc al, sil
xor dil, cl
cmp bl, sil
adc dl, 97
xor dil, dl
test eax, 1340292467
or rax, -823069511
cmp sil, cl
cmp al, -122
or rax, -2144083737
sub esi, -10
adc rax, -827748523
bt eax, edi
add al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
