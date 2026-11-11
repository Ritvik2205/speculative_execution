.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rcx]
or cl, dl
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 43
cmovnb rdx, rdx
jmp .bb_0.1
.bb_0.1:
test eax, -675944960
cmovbe bx, dx
and rbx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rbx]
bt di, si
test bl, dil
btr edx, edx
cmovl edx, esi
or dil, -41
and rsi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], si
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rbx], eax
and rbx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
