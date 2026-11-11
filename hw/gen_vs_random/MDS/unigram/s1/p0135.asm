.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ecx, ebx
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
test rsi, 55
cmovl ebx, eax
and dil, cl
bt rbx, 241
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 53
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
or dl, al
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rdx, rdx
btc rsi, rdx
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], edi
bts rdi, rbx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], di
or cx, -42
or cl, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
