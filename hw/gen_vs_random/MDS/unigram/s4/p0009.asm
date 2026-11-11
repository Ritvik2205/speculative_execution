.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rcx]
cmovs rsi, rcx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rax
and rcx, -63
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
xor sil, sil
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rbx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdx]
btc ebx, 149
jmp .bb_0.1
.bb_0.1:
test rcx, -613256812
and rdi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 2
and rcx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rcx]
cmovnb ecx, edx
and rdx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdx]
and dl, 34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
