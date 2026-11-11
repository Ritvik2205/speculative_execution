.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, sil
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
cmovnp rbx, rcx
bt di, 70
btr rax, 69
or bx, 72
or cl, 100
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 59
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], edi
cmovns ebx, ecx
and rdi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 85
cmovl rcx, rax
and rbx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rbx]
cmovbe rdi, rax
cmovs edx, ecx
or cl, cl
cmovo di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
