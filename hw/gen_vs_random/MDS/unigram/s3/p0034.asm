.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs edi, ebx
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], ax
and si, si
xor bl, -88
bt ecx, eax
and rdx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdx]
or dl, cl
test dl, 9
and rcx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rsi
btc rbx, 35
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
