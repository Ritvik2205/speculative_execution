.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
add sil, -102 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rax]
cmovnp edx, esi
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], ebx
jmp .bb_0.1
.bb_0.1:
movzx ecx, di
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], sil
add eax, -1
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], dx
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 66
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], 42
add bl, -92 # instrumentation
setnz dl
and rdi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
