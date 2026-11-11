.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
btc rax, rcx
xor dl, bl
xor dil, -3
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
cmovp edi, ebx
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
cmovle ax, di
or ax, -6817
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
test eax, 298249463
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
