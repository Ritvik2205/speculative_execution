.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 91
and al, al
cmovb edi, ecx
and rbx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rbx]
xor bl, bl
and rsi, 98
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 90
test si, si
add bl, 4 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], si
setno bl
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 92
movzx rdx, sil
and rdx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
