.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rsi]
add dl, -108 # instrumentation
cmovnle edi, edi
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rsi], di
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -32
imul eax, edi
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
dec ebx
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
lea ax, qword ptr [rsi + rax + 56494]
and al, dil
add cl, 39 # instrumentation
setle dil
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
add cl, -75 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rbx]
test cl, dl
add sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
