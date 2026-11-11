.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -94 # instrumentation
or dl, bl
sub rdx, 82
imul bx, si, 74
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dl
inc dx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
cmovnle rdi, rdx
and rbx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dl
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
lea eax, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rsi]
mov cl, sil
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
