.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec dil
btr ax, 24
cmp edx, edx
neg cl
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], al
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rax
bswap rax
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
sub cx, ax
add dl, -40 # instrumentation
sbb rdx, 85
movzx eax, sil
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 61
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
