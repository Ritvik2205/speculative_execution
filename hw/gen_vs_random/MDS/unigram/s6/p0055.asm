.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ebx, -961564216
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi]
btr rsi, rdx
or si, 0b1000000000000000 # instrumentation
bsr cx, si
and rbx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
and rsi, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rsi]
and dl, 84 # instrumentation
cmovl rdi, rdx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], edi
and al, 39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
cmovnb rdi, rdx
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, esi
and rsi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
and bl, 50 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
