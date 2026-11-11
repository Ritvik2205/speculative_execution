.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
imul sil
inc rsi
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
sbb al, -4
test eax, 645518295
add cl, -40 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
imul rbx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
and dil, bl
lea edx, qword ptr [rax + rax + 85]
mov eax, 5
and rsi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
