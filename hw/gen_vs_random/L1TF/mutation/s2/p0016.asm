.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, cx
lea rcx, qword ptr [rcx]
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], eax
imul rcx
cmovbe rbx, rdx
sbb rax, 2044012157
sbb di, 80
mov ecx, -1856082135
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 53
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 20
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
and rdi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 104
xor dl, cl
or bl, -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
