.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], bl
setns al
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
lea rcx, qword ptr [rbx]
or dil, -113
btc di, bx
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rcx + rdi + 62995]
bts rsi, rdx
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
adc al, -6
and rdi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdi]
not eax
adc bl, bl
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
