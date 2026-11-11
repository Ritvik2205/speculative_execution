.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -22
test dil, -80
btc rdx, 59
bt edx, 61
and rdx, 85
bts rcx, rax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 77
cmovbe esi, eax
xor sil, -126
and rcx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rcx]
or di, bx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
btr rdx, rdi
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
test al, al
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and dl, 13 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rcx]
or dil, dil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
