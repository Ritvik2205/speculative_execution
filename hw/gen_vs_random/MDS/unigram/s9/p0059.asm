.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 0
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 74
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
or cl, -77
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 38
and si, -121
jmp .bb_0.1
.bb_0.1:
btr ecx, ecx
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], dx
btc ecx, esi
or dl, dl
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 36
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], edx
test bl, bl
and rsi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rsi]
btc eax, edx
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rbx], cx
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
test bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
