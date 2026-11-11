.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rsi, 90
xor ecx, 3
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and dx, bx
and rsi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rsi]
cmovnz ebx, eax
bt edi, edi
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 35
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rsi]
bts rdi, 28
xor rdx, 83
and dil, al
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 86
and rcx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rcx]
and edx, 37
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
