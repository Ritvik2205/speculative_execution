.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, cl
lea rbx, qword ptr [rdx + rbx + 5]
lea ebx, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
imul bx, ax, 80
sbb dl, al
setno cl
btr cx, dx
jmp .bb_0.1
.bb_0.1:
xor cl, al
movzx edi, dx
and rax, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rax]
sets al
sbb rax, 1183957102
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rbx
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], di
add bl, -49 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
