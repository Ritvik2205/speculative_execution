.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, sil
bt edi, edi
cmovb cx, cx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], al
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dil
bt rdx, rax
and cl, 95 # instrumentation
cmovns rcx, rcx
xor bl, bl
bt ecx, 78
and rcx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rcx]
and dil, 10
and rdx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdx]
cmovo rdi, rcx
and cl, 85 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rbx]
test dl, cl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rbx]
test ebx, 245771113
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
