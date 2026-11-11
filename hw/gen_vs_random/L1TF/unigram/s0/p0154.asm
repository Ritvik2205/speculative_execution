.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dil
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 62
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 55
lea edi, qword ptr [rdi + rsi]
dec ebx
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], sil
lea di, qword ptr [rax + rcx]
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
add bl, 124 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rcx]
cmovno ax, ax
and rax, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rax]
xor sil, dl
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
