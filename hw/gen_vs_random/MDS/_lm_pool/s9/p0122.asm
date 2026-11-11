.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
or cl, bl
or rax, 52
xor al, bl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
xor cl, -13
and al, 82
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 5
btr edx, ebx
or al, sil
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 46
test eax, 298249463
or rcx, 54
and sil, bl
test dil, cl
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
