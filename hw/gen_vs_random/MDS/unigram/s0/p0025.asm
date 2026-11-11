.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 107
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 82
test si, dx
bt esi, eax
cmovle eax, ecx
and rsi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 21
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
jmp .bb_0.1
.bb_0.1:
test al, bl
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], esi
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
btr rdi, 129
btc bx, 104
and rdi, 50
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], ax
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
