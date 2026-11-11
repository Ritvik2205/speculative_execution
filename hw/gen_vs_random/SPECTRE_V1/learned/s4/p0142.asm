.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dl
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ecx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], al
lea esi, qword ptr [rbx + rax + 78]
lea rcx, qword ptr [rbx + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], si
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
add cl, -94 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 106
imul rdi, rdx, 19
cmp dil, sil
and rax, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
