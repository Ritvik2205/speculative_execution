.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setbe dil
and rcx, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rbx]
add esi, edx
add al, -49 # instrumentation
setnb cl
test cl, 93
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
jmp .bb_0.1
.bb_0.1:
btr eax, ebx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
cmovb eax, edx
xor dil, bl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 83
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], -500051843
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
