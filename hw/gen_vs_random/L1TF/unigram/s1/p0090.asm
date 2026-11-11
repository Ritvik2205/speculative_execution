.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi], 8
cmp ecx, ecx
inc rsi
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
setnle sil
sub cl, -49
bt edi, 58
and rdi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rsi
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
cmp al, dl
lea ax, qword ptr [rax]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -81
xor rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
