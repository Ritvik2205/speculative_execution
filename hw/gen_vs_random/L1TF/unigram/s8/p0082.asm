.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rbx]
cmovo rdx, rax
adc al, -6
setnz sil
and rbx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], cl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], al
jmp .bb_0.1
.bb_0.1:
xor al, sil
adc al, -61
cmovl eax, ecx
add al, -109 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
lea rbx, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 61
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
