.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
cmovp edi, ebx
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
xor dl, bl
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
xor dil, -3
btc rax, rcx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
test eax, -409834435
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
or ax, -20176
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
cmovle ax, di
and dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
