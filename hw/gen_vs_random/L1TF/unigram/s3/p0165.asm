.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setp dil
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rcx
btr eax, 20
add cl, -15 # instrumentation
cmovl rcx, rax
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], cl
add cl, -84 # instrumentation
xchg rcx, rsi
and rdx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdx], 58
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
add al, 40 # instrumentation
cmovp rdx, rax
jmp .bb_0.1
.bb_0.1:
cmovbe ebx, esi
xchg cx, ax
and eax, edi
and rdi, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
add cl, 126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], cx
mov bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
