.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 12
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 6
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
cmovb rbx, rdx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 22
and rax, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rax]
add dl, -97 # instrumentation
sets dil
lea si, qword ptr [rax + rax + 38]
movsx rdi, cx
add bl, 70
and rax, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rax], 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
