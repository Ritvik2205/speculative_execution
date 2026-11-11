.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno rbx, rsi
cmovb cx, ax
test al, -32
setnz dl
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], -49
btc ebx, ebx
sbb dil, sil
bts edi, esi
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rbx], ax
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
cmovnp rsi, rsi
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rax
xor al, dl
cmovs cx, ax
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
