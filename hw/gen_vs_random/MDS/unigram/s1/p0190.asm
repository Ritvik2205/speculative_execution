.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 122 # instrumentation
cmovl ecx, ecx
test edx, -372470678
and dil, dil
cmovo edi, eax
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
test bl, dl
and bl, bl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
test dil, -80
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -80
and bl, -87 # instrumentation
cmovo bx, si
cmovb rdx, rax
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 1
btr rdx, 84
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
and rdx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdx]
and bl, -56 # instrumentation
cmovnle eax, edx
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rax
and dl, -19 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
