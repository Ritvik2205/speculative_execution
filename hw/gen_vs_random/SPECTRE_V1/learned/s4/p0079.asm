.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
adc ax, di
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -53
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi]
xchg edi, eax
bt eax, 127
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
setno al
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], -90
inc sil
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
cmovp rbx, rsi
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
add al, 40 # instrumentation
cmovp rdx, rax
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
xor al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
