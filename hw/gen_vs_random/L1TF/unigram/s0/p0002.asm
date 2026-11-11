.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
bt rax, rax
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], 14
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], -106
and dl, dil
add cl, dl
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -380598914
mov dil, cl
xor dl, dl
imul rbx, rcx
lea esi, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
