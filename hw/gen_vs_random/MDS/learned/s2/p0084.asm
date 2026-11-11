.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdi, rcx
or cl, sil
test al, cl
xor al, -119
bts eax, edx
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
test rdi, 25
lea ebx, qword ptr [rcx]
jmp .bb_0.1
.bb_0.1:
cmovnbe rdx, rdx
and bl, 50
cmovle ecx, ebx
and cl, -81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
bt rbx, rsi
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 64
cmovnle cx, cx
cmovz cx, dx
neg ax
and dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
