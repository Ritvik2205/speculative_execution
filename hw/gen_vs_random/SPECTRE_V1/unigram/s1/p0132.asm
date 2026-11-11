.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ecx, cx
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
add al, -76 # instrumentation
adc al, 44
cmp sil, dl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 2
cmovnl rdx, rsi
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ebx
and rdi, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rdi]
add dl, al
lea edx, qword ptr [rax + rax + 68]
add dl, 52 # instrumentation
sets sil
cmovle rsi, rbx
neg rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
