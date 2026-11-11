.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
cmp sil, al
add dl, 20 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 15
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], eax
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ebx
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], esi
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rsi]
setp bl
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdi
imul esi, eax
lea si, qword ptr [rsi + rsi]
neg cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
