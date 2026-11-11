.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, 0b1000000000000000 # instrumentation
bsr cx, dx
test dil, al
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 93
btc si, dx
imul bl
and rsi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rsi]
cwde
adc bl, dl
and rcx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
xor cl, cl
and bl, 89
sub ebx, 52
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], cl
add bl, -80 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
