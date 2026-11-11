.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], -259018739
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 16
xor rdx, 24
and rax, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rax]
mov bl, bl
and rcx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rcx]
add cl, -110 # instrumentation
setbe cl
and rcx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], sil
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], 78
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 3
xor sil, dil
sbb si, bx
add cl, -3 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
