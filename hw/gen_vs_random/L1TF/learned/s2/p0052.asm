.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 64 # instrumentation
cmovnl rdx, rbx
xor rdi, rdi
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -111
setbe dl
and rax, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -702719947
adc bl, 10
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -9758
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 4
lea ax, qword ptr [rcx]
movsx cx, sil
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
mul cl
lea rsi, qword ptr [rcx + rbx]
sbb bl, -62
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 65
and rsi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
