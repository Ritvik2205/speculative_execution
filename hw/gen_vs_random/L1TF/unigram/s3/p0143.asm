.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rdi, 79
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
xor bl, dl
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], al
mov dil, bl
add dl, -48 # instrumentation
lea ebx, qword ptr [rbx + rax]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 51
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
add cl, -3 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 43
add bl, al
cmp bl, sil
mul rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
