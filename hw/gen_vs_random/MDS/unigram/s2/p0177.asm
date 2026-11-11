.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cx, -42
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
or dx, 125
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rdx], edi
and rax, rax
and rdx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rax], di
jmp .bb_0.1
.bb_0.1:
or eax, -696456144
not bx
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 40
bts rdx, rcx
cmovb dx, si
and al, 49
and bx, 58
cmovle esi, edi
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
