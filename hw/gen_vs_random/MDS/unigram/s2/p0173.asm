.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
and rbx, rdx
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdi
and rcx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rcx]
xor dl, -43
cmovb rdx, rbx
cmovnb ax, si
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], si
not al
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 3
btc ebx, eax
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 73
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and dl, 49 # instrumentation
cmovp rax, rdx
and rbx, 65
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ecx
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
