.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setno dl
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dil
movsx rbx, al
lea si, qword ptr [rdx + rsi]
add edx, 81
add dl, 87
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
cmp rsi, 75
dec cl
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], 35
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], -58
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dil
add al, -125 # instrumentation
cmovb edi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
