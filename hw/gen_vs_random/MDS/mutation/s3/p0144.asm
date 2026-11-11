.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rax, rcx
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
xor dil, 124
xor dl, bl
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
cmovp edi, ebx
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
test eax, 424329527
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and dl, dl
or ax, 127
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
cmovle ax, di
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
