.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
cmovb edi, eax
lea dx, qword ptr [rbx + rax + 92]
or esi, ebx
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
sub cl, -47
and rsi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rsi]
lea di, qword ptr [rax + rbx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rcx]
imul eax
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rcx
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
