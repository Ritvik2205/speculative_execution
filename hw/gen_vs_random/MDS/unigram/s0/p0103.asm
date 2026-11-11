.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
btc si, 67
bt esi, 10
and rcx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
cmovnz rsi, rdi
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dil
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 66
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
cmovl rdx, rcx
cmovb eax, esi
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 15
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
