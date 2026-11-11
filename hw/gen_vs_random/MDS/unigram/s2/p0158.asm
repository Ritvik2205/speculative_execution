.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, -18
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 26
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 3
and rdi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], esi
and dl, -1 # instrumentation
cmovnb si, dx
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 85
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
xor esi, 19
jmp .bb_0.1
.bb_0.1:
cmovs ax, di
or rbx, -124
btc rcx, 11
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 38
and dil, -2 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rax]
or rsi, 67
and dl, -73 # instrumentation
cmovns rax, rdx
and al, -64 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rax]
and cx, 60
and rdi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
