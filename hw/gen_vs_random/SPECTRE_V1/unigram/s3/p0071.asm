.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setp dil
or sil, 34
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 48
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
cmp cl, cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
test sil, 47
cmovno bx, ax
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dl
xor rdx, rax
adc dl, dl
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 6
setnbe sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
