.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, edx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 41
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
btr bx, 74
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 99
or sil, bl
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and cl, 11 # instrumentation
cmovp edi, edx
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], 80
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and bl, 57 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdi]
xor cl, bl
test ax, 18697
xor ebx, ebx
and dil, 65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 42
cmovb rbx, rbx
and rax, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
