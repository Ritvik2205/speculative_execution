.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb sil, sil
test cl, dl
lea ecx, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rcx]
lea ecx, qword ptr [rdi]
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 0
or cx, 61
imul esi, esi, 89
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -1
imul rcx, rbx, 28
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rax
and rbx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rbx]
or dx, 55
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
lea rcx, qword ptr [rdi + rcx + 54]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
