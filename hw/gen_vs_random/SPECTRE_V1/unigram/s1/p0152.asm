.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 50
xor sil, sil
cmovle bx, bx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
mov al, bl
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rcx
setb cl
test si, 83
and rbx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rbx], rdi
add dl, 47
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 5
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
cmovle edx, ecx
lea rdi, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
