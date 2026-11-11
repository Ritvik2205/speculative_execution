.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and edi, 23
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 80
cmovnz ebx, ecx
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rax], rax
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rsi
and al, 2 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 68
and al, 20 # instrumentation
cmovp ax, cx
or sil, al
test rdi, 17
not al
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
