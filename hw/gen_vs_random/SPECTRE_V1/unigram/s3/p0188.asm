.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], 28
btr ebx, 74
add dl, 35 # instrumentation
cmovnz rbx, rdi
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
imul bl
add cl, -26 # instrumentation
cmovnp ax, cx
xor dil, dl
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdi]
test al, 70
lea di, qword ptr [rdx]
cmp sil, sil
and rbx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rbx]
bt cx, 76
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], -58
btc edx, 82
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
