.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, si
add al, -76 # instrumentation
adc bl, 77
add bl, -76 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rdi], eax
add bl, 78 # instrumentation
adc cx, 78
setno dil
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnbe esi, ebx
test al, dil
and rsi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdi]
adc al, -92
add dl, 24 # instrumentation
lea rdx, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
