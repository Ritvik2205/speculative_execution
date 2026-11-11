.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 5
test bl, al
and cl, 6 # instrumentation
and rcx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], edx
or cl, dl
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
bts rdx, rcx
and dil, dl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
jmp .bb_0.1
.bb_0.1:
and rcx, -63
and rsi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], si
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 98
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edx
test rdx, 20
test ecx, -1843375753
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
and al, 17 # instrumentation
cmovnp edx, eax
cmovle rsi, rax
btr cx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
