.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
mov rcx, 82
mov dl, bl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
mul al
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdx]
add al, 19 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdi]
mul rcx
not dl
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
cmovnbe di, ax
add dl, 20 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 90
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
sbb dl, dil
add bl, -76 # instrumentation
cmovnle ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
