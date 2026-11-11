.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dl
add al, sil
sub edx, -33
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdi]
test cx, dx
xor si, ax
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rsi
add cl, 89 # instrumentation
adc dil, al
lea rax, qword ptr [rcx + rcx]
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
