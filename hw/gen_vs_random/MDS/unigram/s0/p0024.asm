.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], di
cmovnb rcx, rcx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 60
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
cmovnle ebx, ecx
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], eax
bts eax, ebx
or bl, dil
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -65
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
or rbx, rcx
and al, 4 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and eax, -1971658905
or dil, al
and bl, 50
and rsi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
