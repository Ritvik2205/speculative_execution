.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -107 # instrumentation
cmovz rbx, rdi
cmovz ax, cx
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
cmovnb cx, bx
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
xor dl, dl
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ebx
jmp .bb_0.1
.bb_0.1:
cmovle rdx, rsi
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 11
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rax]
and dl, sil
xor sil, bl
xor edx, 50
bts rax, 117
not al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
