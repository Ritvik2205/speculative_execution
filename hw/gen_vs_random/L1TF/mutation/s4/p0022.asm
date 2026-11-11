.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -55
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rsi
add bl, -116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
bts rsi, rdx
lea di, qword ptr [rcx + rdi + 62995]
adc bl, bl
not eax
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl
and rdi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdi]
adc al, 70
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
