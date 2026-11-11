.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rbx]
cmovnb ax, si
and dl, -33 # instrumentation
cmovns rdi, rdi
xor sil, 44
cmovnz di, bx
cmovb edi, esi
or rsi, 73
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], cx
xor bl, cl
jmp .bb_0.1
.bb_0.1:
cmovnb rax, rbx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], -13
and rdi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
xor edi, -47
test rdi, 43
and rdi, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rdi]
btc edx, 37
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
