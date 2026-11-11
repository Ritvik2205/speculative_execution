.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
cmovs rdx, rcx
and rsi, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rsi]
and sil, cl
cmovns rsi, rdi
and rbx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rbx]
bts ax, 22
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
cmovz cx, cx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ebx
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rax
btc ebx, eax
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 118
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
