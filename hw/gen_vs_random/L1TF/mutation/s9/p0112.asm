.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
add bl, -116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rsi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -55
jmp .bb_0.1
.bb_0.1:
not eax
adc al, -103
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl
adc bl, bl
lea di, qword ptr [rcx + rdi + 62995]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
bts rsi, rdx
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
