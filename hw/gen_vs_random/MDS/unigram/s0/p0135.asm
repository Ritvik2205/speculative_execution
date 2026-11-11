.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 62
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 8
bt rdi, rcx
bt edx, edx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rdx
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rbx], cx
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 78
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rsi
jmp .bb_0.1
.bb_0.1:
cmovb eax, ebx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and rsi, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 64
or dil, al
cmovnbe di, bx
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
