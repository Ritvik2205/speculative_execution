.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 29
or rsi, rsi
test rbx, rsi
add sil, -61
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
lea di, qword ptr [rax + rax + 7]
xor dl, al
lea ax, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rsi]
and ebx, eax
add dl, 64 # instrumentation
sbb dl, cl
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], cx
cmovbe edx, edi
and cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
