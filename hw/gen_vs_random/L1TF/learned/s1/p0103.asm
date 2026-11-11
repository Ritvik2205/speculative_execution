.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -48 # instrumentation
lea ecx, qword ptr [rcx + rbx]
adc sil, cl
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rax]
or bl, cl
btc cx, dx
setle dl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
btc bx, cx
jmp .bb_0.1
.bb_0.1:
add cl, 102 # instrumentation
sbb dx, cx
and rcx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], al
xor cx, -79
setle bl
mov dl, 87
xchg rcx, rdi
test cx, cx
add dl, -76 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
neg cx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add dl, dl
test sil, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
