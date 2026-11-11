.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg dl, dl
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 109
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rsi
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
imul ebx, ebx, 94
jmp .bb_0.1
.bb_0.1:
add al, 83 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
adc dl, -12
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ebx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
setnb bl
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
adc bl, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
