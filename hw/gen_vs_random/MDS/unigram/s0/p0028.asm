.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and edi, esi
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], si
cmovz cx, dx
bts ebx, 205
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and ebx, 39
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
btc ebx, 149
cmovz ax, si
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
cmovs esi, edx
bt bx, cx
test cx, 401
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
or cl, dil
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 15
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
bts rsi, rdi
cmovb rdi, rdi
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
