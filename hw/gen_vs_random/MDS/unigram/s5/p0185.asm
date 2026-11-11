.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and si, -121
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
and rdx, 46
cmovnp rdi, rsi
cmovnl bx, cx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ebx
test edi, ebx
and rcx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], edi
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
cmovb rbx, rcx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
test sil, 41
cmovnp rax, rax
or sil, dl
xor cl, dl
test al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
