.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 82
or ax, 30524
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
or ebx, -15
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
test edi, eax
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor cl, 24
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
btr di, di
xor di, bx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
xor bl, dil
and rax, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rax]
and bl, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
cmovl rdx, rcx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
