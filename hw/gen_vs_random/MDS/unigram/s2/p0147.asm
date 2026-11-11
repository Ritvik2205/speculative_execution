.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edi
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
cmovnle rdx, rbx
cmovno bx, di
and rcx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 33
and dl, 84 # instrumentation
cmovl rcx, rbx
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
or sil, sil
and bx, 56
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
and al, -15 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
or dl, al
btr si, 208
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rax], cx
btc ax, dx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
