.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
and dl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
or dl, 51
and rcx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
and bl, -40 # instrumentation
cmovp ebx, ebx
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
cmovz edx, edx
xor dl, dil
and bl, 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
cmovnz bx, si
test ax, 6779
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and dil, -48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
btr di, 89
and di, 91
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], di
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ecx
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
