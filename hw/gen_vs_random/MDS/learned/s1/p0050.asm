.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rbx, rax
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 4
and cl, 122 # instrumentation
cmovnb rcx, rsi
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rdx]
dec dl
xor bx, cx
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
test bl, bl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 22
bt rcx, rdx
bt rax, rcx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 85
and rbx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rbx]
cmovs edx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
