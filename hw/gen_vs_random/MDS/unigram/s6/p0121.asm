.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor si, 80
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
cmovns rdi, rbx
or dil, dl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ecx
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], cx
and dl, -1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rcx]
test bl, -114
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -32
and al, 35
or dil, cl
or al, 30
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
and rdi, 24
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 59
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
