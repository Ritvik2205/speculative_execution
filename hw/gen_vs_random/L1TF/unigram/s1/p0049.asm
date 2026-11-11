.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, cl
bt rax, rcx
add eax, -1
and rdx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], edx
test al, sil
movzx edx, si
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdx]
add dl, sil
cmp dil, 37
mul rcx
sbb al, dl
lea di, qword ptr [rax + rsi + 33]
add dl, 127 # instrumentation
setnbe dil
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
