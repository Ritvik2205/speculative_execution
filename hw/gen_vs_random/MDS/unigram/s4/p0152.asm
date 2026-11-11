.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs si, di
and rcx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ebx
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 63
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
test dl, dl
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 66
and al, 4 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 1
cmovp rax, rcx
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
or al, -48
and dl, -1 # instrumentation
cmovnb bx, dx
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdx
and dl, -1 # instrumentation
cmovnb dx, cx
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
