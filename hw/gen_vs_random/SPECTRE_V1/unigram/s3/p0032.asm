.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -55 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
sub dl, -48
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rcx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rcx
xor dl, 71
and rax, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rax]
mov bl, cl
lea eax, qword ptr [rdx]
or cx, 48
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
sub eax, -911655926
and rdx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
