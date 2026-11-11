.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
btc rax, rcx
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
xor dl, bl
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
cmovp edi, ebx
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
xor dil, -3
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
jmp .bb_0.1
.bb_0.1:
and dl, dl
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
cmovle ax, di
test eax, -675944960
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
or ax, -6817
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
