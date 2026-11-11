.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 115
and rcx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rcx]
test rbx, rsi
test edx, 56
xor ax, cx
jmp .bb_0.1
.bb_0.1:
sbb dl, bl
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rax
sbb rax, 717206440
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], rcx
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
