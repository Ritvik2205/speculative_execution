.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 6
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
test bl, 106
sbb ecx, 69
sbb sil, bl
cmovnbe edi, ecx
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], sil
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 6
sub ax, 68
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
not eax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
sbb bl, 2
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
or cx, 0b1000000000000000 # instrumentation
bsr cx, cx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 6
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edi
xor bx, ax
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 4
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
