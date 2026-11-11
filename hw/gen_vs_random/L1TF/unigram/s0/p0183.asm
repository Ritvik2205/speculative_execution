.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and sil, 110
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 94
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdi]
test eax, -385619864
sbb dx, ax
sbb bl, cl
add cl, -34 # instrumentation
setl dl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
add dl, 62 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], bx
adc bl, bl
lea rcx, qword ptr [rcx + rax + 88]
and rax, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 101
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
