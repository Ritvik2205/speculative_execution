.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, bl
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
xor dil, -70
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
btc rax, rcx
cmovp edi, ebx
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
cmovle ax, di
or ax, -11837
and dl, dl
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
test eax, 1729060510
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
