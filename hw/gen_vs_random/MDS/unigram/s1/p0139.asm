.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rbx]
cmovo eax, ebx
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edi
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
cmovnz di, bx
and dl, 13 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rcx]
btr ax, bx
cmovnbe ecx, esi
and rdi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], bx
or ebx, -104
btr ebx, ebx
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], edx
and rdi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
cmovnb bx, cx
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
