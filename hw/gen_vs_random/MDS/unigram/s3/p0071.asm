.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
and sil, -69
or di, 100
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ebx
bts eax, 222
and cx, di
or eax, esi
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], sil
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], bx
or bl, sil
and rax, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rax], ax
xor sil, cl
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rax
jmp .bb_0.1
.bb_0.1:
cmovp bx, di
and dl, dl
test dl, al
cmovns ebx, ebx
test ax, 6779
btr rsi, 207
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
