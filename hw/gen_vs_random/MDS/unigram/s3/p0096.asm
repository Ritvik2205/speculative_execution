.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 8
btr si, 64
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
btr dx, 88
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], eax
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
bts rax, rdx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
jmp .bb_0.1
.bb_0.1:
and edi, 5
and rdi, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdi]
cmovl rdx, rsi
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
cmovs rax, rsi
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and dil, sil
bts rbx, rbx
or sil, al
xor si, 44
and bl, -17 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rbx]
test al, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
