.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rax]
adc sil, -18
and si, 11
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 22
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 16
setnbe al
or dl, 37
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rcx], cx
sets dil
add cl, -94 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 106
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
add cl, -47 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rbx]
add al, 51 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rsi]
btc ax, 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
