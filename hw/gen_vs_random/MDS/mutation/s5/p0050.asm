.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
xor dl, bl
btc rax, rcx
xor dil, -70
cmovp edi, ebx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
test eax, 1287331633
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
or ax, -6817
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
cmovle ax, di
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
