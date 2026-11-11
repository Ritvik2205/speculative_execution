.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
test rsi, -1408527332
sbb eax, 99727957
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
adc dl, 80
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
add ax, 6980
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
sbb rax, 342397759
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, -26 # instrumentation
cmovle rcx, rbx
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
adc rsi, 110
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
test bx, cx
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rcx
jmp .bb_0.2
.bb_0.2:
add bl, -126 # instrumentation
cwd
bt rdx, rdx
bswap rcx
and rbx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rdx
imul cx
add bl, 2 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 931150336
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
