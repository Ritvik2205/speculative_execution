.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
add bl, 76 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rbx]
lea ebx, qword ptr [rdi + rsi + 97]
lea esi, qword ptr [rdx + rdi]
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
mov dil, sil
jmp .bb_0.1
.bb_0.1:
dec bx
adc cl, al
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 33
btr rax, 32
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], cx
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
add cl, 122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
