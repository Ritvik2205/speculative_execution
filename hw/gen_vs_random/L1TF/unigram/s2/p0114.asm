.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ax, 34
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 79
and rcx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rcx]
not dil
lea esi, qword ptr [rbx]
cmovno edi, edi
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdx]
setle dil
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 99
add sil, -15 # instrumentation
cmovl rsi, rdx
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
lea bx, qword ptr [rbx + rcx]
cwd
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
