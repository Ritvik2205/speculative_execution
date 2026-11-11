.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
and rax, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rax]
bswap edi
inc ebx
dec edx
and rcx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rax]
sub esi, 17
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
dec ecx
lea rax, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -109
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 62
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
