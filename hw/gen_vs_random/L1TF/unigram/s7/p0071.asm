.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 60
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
xor bl, bl
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
sub dil, -70
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 58
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
sub ax, 7297
add al, -122 # instrumentation
cmovnbe eax, eax
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
