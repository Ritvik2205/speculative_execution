.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rax, 1131444263
lea rcx, qword ptr [rcx]
xor dl, cl
and rdi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 20
and dx, cx
sbb di, 80
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], eax
imul rcx
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 104
cmovbe rbx, rdx
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 53
mov ecx, -1856082135
or bl, -88
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
